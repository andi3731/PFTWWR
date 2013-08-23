require "rack"

arg = ARGV[0]

raise "Argument is not passed." unless arg

app = lambda do |env|
  [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{arg}"]] 
end

Rack::Handler::WEBrick.run app, Port: 8500
