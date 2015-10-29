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

greeter = Proc.new do |you, me|
  puts "#{you.name} #{me.greeting} says #{me.name}"
end

prater = User.new('Prater', 'Whats happening?', &greeter)
jesse = User.new('Jesse', "How's it hangin?")

prater.greet(jesse)
