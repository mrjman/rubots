def name_with_greeting(name)
  if block_given?
    greeting = yield
    puts "#{name} #{greeting}"
  else
    puts "Sorry where are my manners #{name}"
  end
end

class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet(user, greeting)
    name_with_greeting(user.name) do
      greeting + ' says ' + name
    end
  end
end

rob = User.new('Rob')
jesse = User.new('Jesse')
jesse.greet(rob, 'old buddy old pal how are ya')
