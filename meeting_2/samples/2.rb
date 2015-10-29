def name_with_greeting(name)
  if block_given?
    greeting = yield
    puts "#{name} #{greeting}"
  else
    puts "Sorry where are my manners #{name}"
  end
end

name_with_greeting('Luke') {'yo dawg'}
name_with_greeting('Fender')
