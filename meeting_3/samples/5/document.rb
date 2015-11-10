class Document
  attr_accessor :content

  def initialize
    yield(self) if block_given?
  end

  def content
    @content
  end

  def content=(content)
    @content = content
  end
end
