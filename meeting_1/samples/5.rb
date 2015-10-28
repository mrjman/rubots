def ruby
  :ruby
end

first = :ruby
second = ruby
third = {ruby: 1}.keys.first
fourth = {:one => :ruby}.values.first

puts ":ruby object id: #{first.object_id}"
puts ":ruby object id: #{second.object_id}"
puts ":ruby object id: #{third.object_id}"
puts ":ruby object id: #{fourth.object_id}"


