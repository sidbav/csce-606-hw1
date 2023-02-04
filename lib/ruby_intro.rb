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
  return "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length() == 0
    return false
  end

  first_char = string[0]
  if !first_char.match?(/[A-Za-z]/)
    return false
  end

  vowels = Set["a", "e", "i", "o", "u"]
  return !vowels.include?(first_char.downcase)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length == 1 && string[0] == "0"
    return true
  end

  if string.length < 3
      return false
  end

  if string[-1] != "0" || string[-2] != "0"
    return false
  end


  num_ones = 0
  string.split('').each { |char|
    if char != "0" && char != "1"
      return false
    end

    num_ones += 1 if char == "1"
  }

  return true

end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn_, price_) # optional argument
    if isbn_.length == 0
      raise(ArgumentError, 'ISBN cannot be empty')
    end

    if price_ <= 0
      raise(ArgumentError, 'Price cannot be less than or equal to 0')
    end

    @isbn = isbn_
    @price = price_

  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string()
    price_str = sprintf('%.2f', @price)
    return '$' + price_str
  end

end
