# Write a method doubler(numbers) that takes an array of numbers and returns a new array
# where every element of the original array is multiplied by 2.

def doubler(numbers)
	for i in 0..numbers.length-1
      numbers[i] = numbers[i] * 2
    end
    return numbers
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]

# Write a method yell(words) that takes in an array of words and returns a
# new array where every word from the original array has an exclamation point after it.
def yell(words)
	newWords = []
	for i in 0..words.length-1
      newWord = words[i] + "!"
    	newWords << newWord
    end
    return newWords
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]

# Write a method element_times_index(nums) that takes in an array of numbers and returns a new array containing every number of the original array multiplied with its index.
def element_times_index(numbers)
	for i in 0..numbers.length-1
      numbers[i] *= i
    end
  return numbers
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]

# Write a method even_nums(max) that takes in a number max and returns an array containing all even numbers from 0 to max
def even_nums(max)
  result = []
	for i in 0..max
    	if i % 2 == 0 
          result << i
        end
    end
  return result
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]

# Write a method range(min, max) that takes in two numbers min and max. The method should return an array containing all numbers from min to max inclusive.
def range(min, max)
  	arr = []
	for i in min..max
      arr << i
    end
  return arr
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]

# Write a method odd_range(min, max) that takes in two numbers min and max. The method should return an array containing all odd numbers from min to max (inclusive).
def odd_range(min, max)
	arr = []
  	for i in min..max
      if i % 2 != 0 
        arr << i
      end
    end
  return arr
      
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]

# Write a method reverse_range(min, max) that takes in two numbers min and max. The function should return an array containing all numbers from min to max in reverse order. The min and max should be excluded from the array

def reverse_range(min, max)
	i = max-1
  	arr = []
    while i > min
		arr << i
      	i -= 1
    end
  	return arr
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]

# Write a method first_half(array) that takes in an array and returns a new array containing the first half of the elements in the array. If there is an odd number of elements, return the first half including the middle element.
def first_half(array)
  	i = 0
  	newArray = []
	while i < (array.length / 2.0)
      newArray << array[i]
      i += 1
    end
  	return newArray
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]

# Write a method factors_of(num) that takes in a num and returns an array of all positive numbers less than or equal to num that can divide num.
def factors_of(num)
	newArray = []
  	for i in 1..num
      if num % i == 0
      	newArray << i
      end
    end
  return newArray
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]

# Write a method select_odds(numbers) that takes in an array of numbers and returns a new array containing the odd numbers of the original array.
def select_odds(numbers)
	odds = []
  	for i in 0..numbers.length-1
      number = numbers[i]
      if number % 2 == 1
        odds << number
      end
    end
  return odds
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []

# Write a method select_long_words(words) that takes in an array of words and returns a new array containing all of the words of the original array that are longer than 4 characters.
def select_long_words(words)
  longWords = []
	for i in 0..words.length-1
      word = words[i]
      if word.length > 4
        longWords << word
      end
    end
  return longWords
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]

# Write a method fizz_buzz(max) that takes in a number max and returns an array containing all numbers greater than 0 and less than max that are divisible by either 4 or 6, but not both.
def fizz_buzz(max)
  newArray = []
  for i in 0..max
    if (i > 0) && (i < max)
    	if (i % 4 == 0) ^ (i % 6 == 0)
          newArray << i
        end
    end
  end
  return newArray
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]