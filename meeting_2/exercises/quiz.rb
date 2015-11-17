class Quiz
  # use my_each to output an array of string
  # representations for each item
  def solution1(input)
    item_array = []

    input.my_each do |item|
      item_array.push(item.to_s)
    end

    item_array
  end

  # use my_select to return array of even value
  def solution2(input)
    input.my_select do |item|
      item.even?
    end
  end

  # use my_reject to return array of odd values
  def solution3(input)
    input.my_reject do |item|
      item.even?
    end
  end

  # use my_map to return array of values each
  # multiplied by 4
  def solution4(input)
    input.my_map do |item|
      item * 4
    end
  end

  # use my_inject to compute the addition of
  # all values
  def solution5(input)
    input.my_inject do |total, item|
      total += item
    end
  end

  # use my_inject to compute the addition of
  # all values starting at the initial value of 5
  def solution6(input)
    input.my_inject(5) do |total, item|
      total += item
    end
  end
end
