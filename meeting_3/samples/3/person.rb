class Person
  attr_reader :name, :gender, :weight, :height

  def initialize(name, gender, weight, height)
    @name = name
    @gender = gender
    @weight = weight
    @height = height
  end
end
