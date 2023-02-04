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
  arr.sum
end

def max_2_sum(arr)
  case arr.length
  when 0
    0
  when 1
    arr[0]
  else
    largest = arr.max
    second_largest = arr.sort[-2]
    largest + second_largest
  end
end

def sum_to_n?(arr, number)
  return false if arr.length < 2

  target_values = Set[]
  arr.each do |val|
    diff = number - val
    return true if target_values.include?(diff)

    target_values.add(val)
  end

  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  return false if string.empty?

  first_char = string[0]
  return false unless first_char.match?(/[A-Za-z]/)

  vowels = Set['a', 'e', 'i', 'o', 'u']
  !vowels.include?(first_char.downcase)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  return true if string.length == 1 && string[0] == '0'

  return false if string.length < 3

  return false unless string[-2..].match?(/00/)

  string.split('').each do |char|
    return false unless char.match?(/[0-1]/)
  end

  true
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn_, price_)
    raise(ArgumentError, 'ISBN cannot be empty') if isbn_.empty?

    raise(ArgumentError, 'Price cannot be less than or equal to 0') if price_ <= 0

    @isbn = isbn_
    @price = price_
  end

  attr_accessor :isbn, :price

  def price_as_string
    price_str = format('%.2f', @price)
    "$#{price_str}"
  end
end
