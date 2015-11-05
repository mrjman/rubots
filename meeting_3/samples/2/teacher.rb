class Teacher < Person
  attr_reader :school

  def initialize(name, gender, weight, height, school)
    @school = school
    super(name, gender, weight, height)
  end
end
