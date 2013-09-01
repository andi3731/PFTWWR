require './my_middleware'
use MyMiddleware::Hello
run Proc.new { |env| [200, {"Conten-Type" => "text/plain"}, ['Try accessing visiting /hello']] }
