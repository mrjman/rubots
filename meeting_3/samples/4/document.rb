class Document
  attr_accessor :content

  def initialize
    yield(self) if block_given?
  end
end
