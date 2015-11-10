# Demonstration of:
# Modules
# Method overriding
# Class extension through modules
# Open classes
require_relative 'actions.rb'
require_relative 'student_actions.rb'
require_relative 'teacher_actions.rb'
require_relative 'person.rb'
require_relative 'student.rb'
require_relative 'teaching_assistant.rb'

def day_in_the_life_of(person)
  puts
  puts "Day in the life of a #{person.class}"
  person.go_to_school
  person.do_work
  person.set_alarm
  person.sleep
end

jesse = Student.new('Jesse', 'Male', 150, 69) do |student|
  student.school = 'Rubot University'
end

john = TeachingAssistant.new('John', 'Male', 150, 72) do |ta|
  ta.school = 'Rubot University'
end

day_in_the_life_of(jesse)
day_in_the_life_of(john)
