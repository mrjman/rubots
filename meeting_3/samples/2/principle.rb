class Principle < Person
  attr_accessor :school

  def initialize(*args)
    super
    yield(self) if block_given?
  end
end
