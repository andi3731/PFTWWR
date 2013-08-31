require 'sinatra'

get '/' do
  "Hello Ruby participants from across the globe."
end

get '/login' do
  username = params[:username]
  password = params[:password]
  "#{username} #{password}"
end
