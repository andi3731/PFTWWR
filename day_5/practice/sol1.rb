require "net/http"

uri = URI('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')
content = Net::HTTP.get(uri)
puts content.scan(/the/).size
