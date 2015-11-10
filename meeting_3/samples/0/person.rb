class Person
  @@species = 'Homo sapiens'

  def self.species
    "In class method: #{@@species}"
  end

  def species
    "In instance method: #{@@species}"
  end

  def species=(species)
    @@species = species
  end
end
