module Enumerable
  def my_each
    i = 0
    while i < length
      yield(self[i])
      i += 1
    end
  end

  def my_map
    output = []
    my_each do |item|
      output << yield(item)
    end
    output
  end

  def my_select
    output = []
    my_each do |item|
      output << item if yield(item)
    end
    output
  end

  def my_reject
    output = []
    my_each do |item|
      output << item unless yield(item)
    end
    output
  end

  def my_inject(initial=nil)
    aggregate = initial

    index = 0
    my_each do |item|
      if aggregate.nil? && index == 0
        aggregate = item
      else
        aggregate = yield(aggregate, item)
      end

      index += 1
    end

    aggregate
  end
end
