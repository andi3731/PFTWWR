module ErrorThrow
  class Throw
    def initialize(app)
      @app = app
    end

    def call(env)
      gen_response(env['PATH_INFO'] == '/' ? 'OK!' : 'Not OK!')
    end

  private
    def gen_response(body)
      [200, {"Content-Type" => "text/plain"}, [body]]
    end
  end
end
