class Search
  def binary(list, element)
    low = 0
    high = list.length - 1

    while low < high
      mid = (low + high) / 2
      guess = list[mid]
      return mid if guess == element

      if guess > element
        high = mid - 1
      else
        low = mid + 1
      end
    end

    nil
  end

  def rec_binary (list, element)
    # не знаю как используя рекурсию возвращать правильный индекс элемента
  end
end

list = [1, 3, 5, 7, 9, 12, 15]
search = Search.new
puts search.binary(list, 3)
puts search.binary(list, 12)
puts search.binary(list, 36)
