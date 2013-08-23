app = lambda do |env|
  [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: Hello World"]] 
end

run app
