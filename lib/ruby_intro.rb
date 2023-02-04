# frozen_string_literal: true

# Part 1

def sum(arr)
  # Classic For Loop
  # total = 0
  # for i in arr do
  #   total += i
  # end
  # total

  # Block
  # total = 0
  # arr.each{|x| total += x}
  # total

  # Built in functionality
  arr.sum()
end

def max_2_sum(arr)
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  else
    largest = arr.sort[-1]
    second_largest = arr.sort[-2]
    return largest + second_largest
  end
end

def sum_to_n?(arr, number)
  if arr.length() < 2
    return false
  else
    target_values = Set[]
    for val in arr do
      diff = number - val
      if target_values.include?(diff)
        return true
      end
      target_values.add(val)
    end

    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
