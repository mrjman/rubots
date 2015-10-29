def name_with_greeting(name)
  puts "#{name} #{yield}"
end

name_with_greeting('John') do
  'how are you doing back there'
end

name_with_greeting('Steve') do
  'long time no see'
end
