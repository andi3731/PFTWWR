run ->(env) do
  [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]]
end
