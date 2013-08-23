require "rack"

my_rack_proc = ->(env) do
  [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]]
end

Rack::Handler::WEBrick.run my_rack_proc, Port: 9876
