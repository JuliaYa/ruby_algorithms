class Sum
  def sum(array)
    return 0 if array.empty?
    array.first + sum(array[1..-1])
  end
end

list = [1, 3, 5, 7, 9, 12, 15]
summy = Sum.new
puts summy.sum list
