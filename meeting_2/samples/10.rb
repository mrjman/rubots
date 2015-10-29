class Document
  include Enumerable

  def initialize(*words)
    @words = words
  end

  def each
    words_array = @words
    i = 0
    while i < words_array.length
      yield words_array[i]
      i += 1
    end
  end

  def each_pair
    words_array = @words
    i = 0
    while i < (words_array.length-1)
      yield words_array[i], words_array[i+1]
      i += 1
    end
  end

  def each_character
    words_string = @words.join('')
    i = 0
    while i < (words_string.length)
      yield words_string[i]
      i += 1
    end
  end
end

d = Document.new('one', 'two', 'three')

puts 'Select'
d_select = d.select do |word|
  word.length > 3
end

puts ''
puts 'Each pair'
d.each_pair do |a, b|
  p [a, b]
end

e = d.to_enum(:each_character)
e.each_slice(2) do |words|
  p words
end
