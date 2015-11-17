module Enumerable

  # implement your version of each
  # without using any enumerable methods
  # hint 1: think for/while loops
  # hint 2: you have access to array methods (i.e. length, [])
  def my_each
    for i in self
      yield i
    end
  end

  # implement your version of map
  def my_map
    map_array = []

    for i in self
      map_array.push(yield i)
    end

    map_array
  end

  # implement your version of select
  def my_select
    even_array = []

    for i in self
      success = yield i

      if success
        even_array.push(i)
      end
    end

    even_array
  end

  # implement your version of reject
  def my_reject
    odd_array = []

    for i in self
      success = yield i

      if !success
        odd_array.push(i)
      end
    end

    odd_array
  end

  # implement your version of inject
  # when initial is passed that should be
  # the starting value otherwise the first item
  # in the array is the starting value
  def my_inject(initial=nil)
    sum = initial
    index = 0

    for i in self
      if sum.nil? && index == 0
        sum = i
      else
        sum = yield(sum, i)
      end
    end

    sum
  end
end
