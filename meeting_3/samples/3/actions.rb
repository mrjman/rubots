module Actions
  def self.included(base)
    puts "#{self} was just included into #{base}"
  end

  def sleep
    puts "Goodnight, I'm falling asleep"
  end

  def set_alarm
    puts "I'm waking up at 7am"
  end
end
