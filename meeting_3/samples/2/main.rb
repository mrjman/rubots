require 'pp'
require_relative 'person.rb'
require_relative 'student.rb'
require_relative 'teacher.rb'
require_relative 'principle.rb'


steve = Student.new('Steve', 'Male', 160, 72)
steve.school = 'Rubot University'
pp steve

jesse = Teacher.new('Jesse', 'Male', 150, 69, 'Rubot University')
pp jesse

prater = Principle.new('Prater', 'Male', 145, 73) do |principle|
  principle.school = 'Rubot University'
end
pp prater
