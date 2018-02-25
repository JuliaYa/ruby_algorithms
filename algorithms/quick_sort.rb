
class QuickSort
  def sort(array)
    return array if array.size < 2

    if array.size == 2
      first, second = array
      return [second, first] if first > second
    end

    base_index = rand array.size
    base = array[base_index]
    left = []
    right = []
    array.each_with_index do |el, idx|
      next if idx == base_index
      if base > el
        left.push el
      else
        right.push el
      end
    end
    [sort(left), [base], sort(right)].reduce(:concat)
  end
end

qsort = QuickSort.new

require 'benchmark'

rev = (1..10_000).to_a.reverse
n = 100

puts 'Measuring'
Benchmark.bm do |x|
  x.report('Standard sort') { n.times { rev.sort } }
  x.report('My sort') { n.times { qsort.sort rev } }
end

