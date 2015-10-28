[
  [],
  Array.new(2),
  Array(1),
  %w(1 2 3),
  %W{#{2+3} 1 2},
  {a: 1}.to_a
].each do |item|
  puts "#{item} is an #{item.class}"
end
