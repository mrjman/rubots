class Student < Person
  def initialize(*args)
    super
  end

  def school
    @school
  end

  def school=(school)
    @school = school
  end
end
