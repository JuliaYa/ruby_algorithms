class MyArray
  def sum(array)
    return 0 if array.empty?
    array.first + sum(array[1..-1])
  end

  def max(array)
    return array.first if array.size == 1
    max_tail = max(array[1..-1])
    array.first >= max_tail ? array.first : max_tail
  end
end

list = [1, 3, 5, 7, 9, 12, 15]
list2 = [4, 1, 6, 12, 35, 3, 0, 35]
summy = MyArray.new
puts summy.sum list
puts summy.max list
puts summy.max list2
