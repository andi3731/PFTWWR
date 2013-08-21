my_rack_proc = lambda do |env|
  [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]] 
end

puts my_rack_proc.call()
