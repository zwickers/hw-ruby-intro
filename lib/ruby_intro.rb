require 'set'
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each do |num|
  	result += num
  end
  result
end

def max_2_sum arr
  if arr.length == 0
  	0
  elsif arr.length == 1
    arr[0]
  else 
  	arr.sort()[arr.length-1] + arr.sort()[arr.length-2]
  end
end

def sum_to_n? arr, n
  if arr.length == 0 or arr.length == 1
  	return false
  end

  setOfNums = Set.new
  arr.each do |num|
    if setOfNums.include?(n - num)
  	  return true
  	else 
  	  setOfNums.add(num)
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.length == 0

  first = s.downcase[0]

  if !(first == "a" or first == "e" or first == "i" or first == "o" or first == "u") and first =~ /[a-zA-Z]/
  	return true
  else
  	return false
  end
end

def binary_multiple_of_4? s
  return true if s == "0" or s.match? /\A^[10]*(00)\z/
  return false
end

# Part 3

class BookInStock

	attr_accessor :isbn, :price

	def initialize(isbn, price)
		raise ArgumentError if price <= 0 or isbn == ""
		@isbn = isbn
		@price = price
	end

	def price_as_string
		dollars = @price.round(2)
		dollars = dollars.to_s
		dollars = "$" + dollars
		idx = dollars.index(/\./) + 1
		if dollars[idx..dollars.length-1].length == 1
			dollars += "0"
		end
		return dollars
	end
end