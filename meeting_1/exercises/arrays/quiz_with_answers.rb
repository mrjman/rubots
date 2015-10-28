class Quiz
  # find even values
  def solution1(input)
    input.flatten.select do |value|
      value.even?
    end

    # input.map do |ary|
    #   ary.select do |value|
    #     value.even?
    #   end
    # end.flatten
  end

  # find value sum
  def solution2(input)
    input.flatten.inject(:+)

    # input.flatten.inject do |sum, value|
    #   sum += value
    # end

    # input.map do |ary|
    #   ary.inject do |sum, value|
    #     sum += value
    #   end
    # end.inject do |sum, value|
    #   sum += value
    # end
  end

  # find max value
  def solution3(input)
    input.flatten.max

    # input.map do |ary|
    #   ary.max
    # end.max
  end

  # sum the array lengths
  def solution4(input)
    input.map(&:length).inject(0, :+)

    # input.map(&:length).inject{|sum, value| sum += value}

    # input.map do |ary|
    #   ary.length
    # end.inject {|sum, value| sum += value}
  end

  # transform to factorials
  def solution5(input)
    input.map do |ary|
      ary.map do |value|
        (1..value).inject do |factorial, value|
          factorial *= value
        end
      end
    end
  end
end
