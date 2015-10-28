my_hash = {:one => 'mondo robot', :two => 'robot', :three => 'MondoRobot'}

my_hash.each do |key, value|
  puts "found mondo in #{value}" if value.match(/mondo/i)
end
