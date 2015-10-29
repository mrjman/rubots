class User
  attr_reader :name, :greeting

  def initialize(name, greeting, &greeter)
    @name = name
    @greeting = greeting
    @greeter = greeter
  end

  def greet(user)
    @greeter.call(user, self)
  end
end

jake = User.new('Jake', 'Whats happening?')
jesse = User.new('Jesse', "How's it hangin?") do |you, me|
  puts "#{you.name} #{me.greeting} says #{me.name}"
end

jesse.greet(jake)
