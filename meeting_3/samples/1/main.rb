# Simple class
# Demonstration of creating a new object
# Demonstration of instance methods
require 'pp'
require_relative 'person.rb'

jesse = Person.new('Jesse', 'Male', 150, 69)
pp jesse
puts 'name:' + jesse.name
puts 'gender:' + jesse.gender
puts 'weight:' + jesse.weight.to_s
puts 'height:' + jesse.height.to_s
