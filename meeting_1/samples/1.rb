my_array = ['duck', 1, "#{2+2}", :hello]

puts 'Print out string version of each item in the array'
my_array.each do |item|
  puts item.to_s if item.respond_to? :to_s
end

puts

puts 'Print out length of each item in the array'
my_array.each do |item|
  if item.respond_to? :length
    puts "#{item.to_s} length: #{item.length}"
  else
    puts "#{item.to_s} does not respond to length"
  end
end
