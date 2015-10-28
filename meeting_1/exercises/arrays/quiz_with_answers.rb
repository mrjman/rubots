class Quiz
  # find even values
  def solution1(input)
    # Final solution
    input.flatten.select do |value|
      value.even?
    end

    # First solution:
    # Works correctly
    # Unoptimized
    #
    # input.map do |ary|
    #   ary.select do |value|
    #     value.even?
    #   end
    # end.flatten
  end

  # find value sum
  def solution2(input)
    # Final Solution
    input.flatten.inject(:+)

    # Second solution:
    # Works correctly
    # Doesn't use shortcut version of inject
    #
    # input.flatten.inject do |sum, value|
    #   sum += value
    # end

    # First solution:
    # Works correctly
    # Unoptimized
    #
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
    # Final solution
    input.flatten.max

    # First solution:
    # Works correctly
    # Unoptimized
    #
    # input.map do |ary|
    #   ary.max
    # end.max
  end

  # sum the array lengths
  def solution4(input)
    # Final solution
    input.map(&:length).inject(0, :+)

    # Second solution:
    # Works correctly
    # Doesn't use shortcut version of inject
    #
    # input.map(&:length).inject{|sum, value| sum += value}

    # First solution:
    # Works correctly
    # Unoptimized
    #
    # input.map do |ary|
    #   ary.length
    # end.inject {|sum, value| sum += value}
  end

  # transform to factorials
  # Factorial is defined as the product of all the whole numbers from 1 to n
  # Examples:
  # 4! = 4*3*2*1
  # 1! = 1
  # 0! = 1
  def solution5(input)
    # Approach
    # Map over the initial array (to return a transformed array)
    # Map over each interal array (to return a transformed array)
    # Creates an enumerable range up to the value in the array
    # Multiple each value in the range using the inject method
    # which iterates and keeps the running total

    # Final solution
    # Uses shorthand version of inject
    # Remove the useless multiple by 1
    # Note the use of the starting value of 1 for inject
    # which makes 0!=1 class Quiz
  # find even values
  def solution1(input)
    # Final solution
    input.flatten.select do |value|
      value.even?
    end

    # First solution:
    # Works correctly
    # Unoptimized
    #
    # input.map do |ary|
    #   ary.select do |value|
    #     value.even?
    #   end
    # end.flatten
  end

  # find value sum
  def solution2(input)
    # Final Solution
    input.flatten.inject(:+)

    # Second solution:
    # Works correctly
    # Doesn't use shortcut version of inject
    #
    # input.flatten.inject do |sum, value|
    #   sum += value
    # end

    # First solution:
    # Works correctly
    # Unoptimized
    #
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
    # Final solution
    input.flatten.max

    # First solution:
    # Works correctly
    # Unoptimized
    #
    # input.map do |ary|
    #   ary.max
    # end.max
  end

  # sum the array lengths
  def solution4(input)
    # Final solution
    input.map(&:length).inject(0, :+)

    # Second solution:
    # Works correctly
    # Doesn't use shortcut version of inject
    #
    # input.map(&:length).inject{|sum, value| sum += value}

    # First solution:
    # Works correctly
    # Unoptimized
    #
    # input.map do |ary|
    #   ary.length
    # end.inject {|sum, value| sum += value}
  end

  # transform to factorials
  # Factorial is defined as the product of all the whole numbers from 1 to n
  # Examples:
  # 4! = 4*3*2*1
  # 1! = 1
  # 0! = 1
  def solution5(input)
    # Approach
    # Map over the initial array (to return a transformed array)
    # Map over each interal array (to return a transformed array)
    # Creates an enumerable range up to the value in the array
    # Multiple each value in the range using the inject method
    # which iterates and keeps the running total

    # Final solution
    # Uses shorthand version of inject
    # Remove the useless multiple by 1
    # Note the use of the starting value of 1 for inject
    # which makes this work properly for all values (including 0, 1)
    input.map do |ary|
      ary.map do |value|
        (2..value).inject(1, :*)
      end
    end

    # First solution
    # Mostly optimized
    # Does 1 more multiplication than needed (mult by 1)
    #
    # input.map do |ary|
    #   ary.map do |value|
    #     (1..value).inject(1) do |factorial, value|
    #       factorial *= value
    #     end
    #   end
    # end
  end
end
nd 1!=1 work properly
    input.map do |ary|
      ary.map do |value|
        (2..value).inject(1, :*)
      end
    end

    # First solution
    # Mostly optimized
    # Does 1 more multiplication than needed (mult by 1)
    #
    # input.map do |ary|
    #   ary.map do |value|
    #     (1..value).inject(1) do |factorial, value|
    #       factorial *= value
    #     end
    #   end
    # end
  end
end
