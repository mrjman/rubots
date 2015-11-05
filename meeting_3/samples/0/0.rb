class Person
  @@species = 'Homo sapiens'

  def species
    @@species
  end

  def species=(species)
    @@species = species
  end
end

person_one = Person.new
person_two = Person.new

puts person_one.species
puts person_two.species

person_one.species = 'Primate'

puts person_one.species
puts person_two.species

person_three = Person.new
person_three.species

puts person_three.species
