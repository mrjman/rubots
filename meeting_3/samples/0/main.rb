# Simple class
# Demonstration of:
# Class instance variables
# Class methods
# Instance methods

require_relative 'person.rb'

person_one = Person.new
person_two = Person.new

puts Person.species
puts person_one.species
puts person_two.species

person_one.species = 'Primate'

puts Person.species
puts person_one.species
puts person_two.species

person_three = Person.new
person_three.species

puts person_three.species
