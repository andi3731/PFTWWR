class Idea
  attr_accessor :title, :body, :created_at

  def self.store
    @ideas ||= []
  end

  class InvalidParams < StandardError; end

  # create an instance baes on some passed params
  def initialize(params)
    raise InvalidParams, "You need to provide at least a title" unless params['title']
    self.title = params['title']
    self.body = params['body']
    self.created_at = Time.now
  end

  # Converts an instace into a string
  def to_s
    "#{title} at #{created_at.to_s}\n#{body}"
  end
end

class IdeaAPI
  def call(env)
    request = Rack::Request.new(env)
    case request.request_method
    when 'POST'
      begin
        idea = Idea.new(request.params)
      rescue Idea::InvalidParams => error
        [400, {"Content-Type" => "text/plain"}, [error.message]]
      else
        Idea.store << idea
        [200, {"Content-Type" => "text/plain"}, ["Idea added, currently #{Idea.store.size} ideas in memory!"]]
      end
    when 'GET'
      [200, {"Content-Type" => "text/plain"}, [Idea.store.map(&:to_s).join("\n\n") + "\n"]]
    else
      [404, {}, ["Did you get lost?"]]
    end
  end
end

map '/ideas' do
  run IdeaAPI.new
end
