class Quiz
  # transform to lower case
  def solution1(input)
    input.map(&:downcase)
  end

  # transform to title case
  def solution2(input)
    input.map(&:capitalize)
  end

  # filter lower case
  def solution3(input)
    input.select do |item|
      item == item.downcase
    end
  end

  # concatenate all
  def solution4(input)
    input.inject(&:+)
  end

  # get total string length without concatenation
  def solution5(input)
    input.inject(0) do |sum, item|
      sum += item.length
    end
  end
end
