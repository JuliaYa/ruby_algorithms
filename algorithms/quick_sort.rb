class QuickSort
  def sort(array)
    return array if array.size < 2

    if array.size == 2
      first = array.first
      second = array.last
      if first > second
        array[0] = second
        array[1] = first
      end
      array
    end

    base = array.first
    left = []
    right = []
    array[1..-1].each do |el|
      if base > el
        left.push el
      else
        right.push el
      end
    end
    [sort(left), [base], sort(right)].reduce([], :concat)
  end
end

list = [2, 5, 1, 7, 12, 45]
qsort = QuickSort.new
print qsort.sort list
puts
list2 = [3, 2]
print qsort.sort list2
puts
