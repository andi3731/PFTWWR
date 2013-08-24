app = proc do |env|
  res = Rack::Response.new
  req = Rack::Request.new(env)
  str = req.params['str']

  res.finish do |res|
    res['Content-Type'] = 'text/plain'
    res.status = 200
    res.write "Your string reversed is: #{str.reverse}"
  end
end

run app
