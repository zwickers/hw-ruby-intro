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
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
