class Student < Person
  include Actions
  include StudentActions

  attr_accessor :school

  def initialize(*args)
    super
    yield(self) if block_given?
  end
end
