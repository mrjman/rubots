module StudentActions
  def self.included(base)
    puts "#{self} was just included into #{base}"
  end

  def go_to_school
    puts "I'm walking to #{school}"
  end

  def do_work
    puts "I'm doing my homework for calculus"
  end

  def set_alarm
    puts "I'm waking up at 7am"
  end
end

