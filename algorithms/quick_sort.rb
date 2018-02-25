
class QuickSort
  def sort(array)
    return array if array.size < 2

    if array.size == 2
      first, second = array
      return [second, first] if first > second
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

