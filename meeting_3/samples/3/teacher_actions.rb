module TeacherActions
  def self.included(base)
    puts "#{self} was just included into #{base}"
  end

  def go_to_school
    puts "I'm driving to #{school}"
  end

  def do_work
    puts "I'm grading papers"
  end

  def set_alarm
    puts "I'm waking up at 6am"
  end
end
