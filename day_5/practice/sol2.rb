require "open-uri"

io = open('http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html')
content = io.readlines.join
puts content.scan(/the/).size
