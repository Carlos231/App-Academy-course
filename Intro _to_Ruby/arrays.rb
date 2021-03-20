#!/usr/bin/env ruby

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

# Enumerables and Ranges

# Write a method to_initials that takes in a person's name string and returns a string representing their initials.
def to_initials(name)
  	fullName = name.split(" ");
  	initials = ""
  	fullName.each_with_index do |word, i|
      initials += word[0]
    end
  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

# Write a method first_in_array that takes in an array and two elements, the method should return the element that appears earlier in the array.
def first_in_array(arr, el1, el2)
	arr.each_with_index do |letter, i|
    	if (letter == el1)
          return el1
        end
      	if (letter == el2)
          return el2
        end
    end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"

# Write a method abbreviate_sentence that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.
def abbreviate_sentence(sent)
	arrSent = sent.split(" ")
  	arrSent.each_with_index do |word, i|
    	if (word.length > 4)
    		arrSent[i] = removeVowels(word)
    	end
    end
  	return arrSent.join(" ")
end

def removeVowels(word)
	vowels = "aeiou"
  	newWord = ""
  	word.each_char do |char|
    	if !vowels.include?(char)
          newWord += char
        end
    end
  	return newWord
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

# Write a method format_name that takes in a name string and returns the name properly capitalized.
# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
	words = str.split(" ")
  	newWord = ""
  
  	words.each do |word|
      newWord += word[0].upcase + word[1..-1].downcase + " "
    end
  return newWord
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"

# Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name.
# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
	words = str.split(" ")
  	if words.length >= 2
    	words.each do |word|
          temp = word[0].upcase + word[1..-1].downcase
          if temp != word
            return false
          end
        end
      return true
    end
    return false
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

# Write a method reverse_words that takes in a sentence string and returns the sentence with the order of the characters in each word reversed. Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.
def reverse_words(sent)
	words = sent.split(" ")
  	reversedWords = ""
  	words.each do |word|
    	reversedWords = reversedWords + word.reverse + " "
    end
  
  	return reversedWords
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'

# Write a method rotate_array that takes in an array and a number. The method should return the array after rotating the elements the specified number of times. A single rotation takes the last element of the array and moves it to the front.
def rotate_array(arr, num)
# 	loop num times
  for i in 0...num
    temp = arr.pop
    arr.unshift(temp)
  end
  return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts

# Write a method is_valid_email that takes in a string and returns a boolean indicating whether or not it is a valid email address.
# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)

  lowerLetters = "abcdefghijklmnopqrstuvwxyz"
  sections = str.split("@")
  
#   check if more than 2 @'s or no @'s
  if sections.length != 2
    return false
  end
  
#   check if left is letters
  sections[0].each_char do |letter|
    if !lowerLetters.include?(letter)
    	return false
    end
  end
  
  
  if sections[1].split(".").length == 2
    return true
  else 
    return false
  end
  
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false

# 2D Arrays

# Write a method combinations that takes in an array of unique elements, the method should return a 2D array representing all possible combinations of 2 elements of the array.
def combinations(arr)
  	solution = []
	arr.each do |i|
    arr.each do |j|
      if (j > i)
        solution.push([i,j])            	
      end
    end
  end
  return solution
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts

# Write a method opposite_count that takes in an array of unique numbers. The method should return the number of pairs of elements that sum to 0.
def opposite_count(nums)
	count = 0
  nums.each do |i|
    nums.each do |j|
      if (j > i && i + j == 0)
        count += 1
      end
    end
  end
  return count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1

# Write a method two_d_Sum that takes in a two dimensional array and returns the sum of all elements in the array.
def two_d_sum(arr)
	sum = 0
  arr.each do |subArray|
    subArray.each do |i|
      sum += i
    end
  end
  return sum
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15

# Write a method two_d_translate that takes in a 2 dimensional array and translates it into a 1 dimensional array. You can assume that the inner arrays always have 2 elements. See the examples.

def two_d_translate(arr)
  result = []
	arr.each do |subArray|
    subArray[1].times do 
      result.push(subArray[0])
    end
  end
  return result
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts

# Write a method array_translate that takes in an array whose elements alternate between words and numbers. The method should return a string where each word is repeated the number of times that immediately follows in the array.

def array_translate(array)
  translated = ""
  i = 0
  while i < array.length
  	array[i+1].times do
    	translated += array[i]
    end
    i += 2
  end
  return translated
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts

# Write a method pig_latin_word that takes in a word string and translates the word into pig latin.
# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
	vowels = "a,e,i,o,u"
  	if ( vowels.include?(word[0]) )
      return word + "yay"
    end
  	for i in (0...word.length)
      if (vowels.include?(word[i]))
        return word[i..-1] + word[0...i] + "ay"
      end
    end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"