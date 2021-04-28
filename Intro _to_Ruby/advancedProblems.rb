# Map By Name
# Write a method map_by_name  that takes in an array of hashes and returns a new array containing the names of each hash.

def map_by_name(arr)
return arr.map { |hash| hash["name"] }
end


pets = [
  {"type"=>"dog", "name"=>"Rolo"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Finn"},
  {"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Hungary", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts

# Map By Key
# Write a method map_by_key that takes in an array of hashes and a key string. The method should returns a new array containing the values from each hash for the given key.

def map_by_key(arr, key)
	return arr.map { |arr| arr[key] }
end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts

# Yell Sentence
# Write a method yell_sentence that takes in a sentence string and returns a new sentence where every word is yelled. See the examples. Use map to solve this.

def yell_sentence(sent)
	words = sent.split(" ")
  	new_words = words.map{ |word| word.upcase + "!"}
  	return new_words.join(" ")
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"

# Whisper Words
# Write a method whisper_words that takes in an array of words and returns a new array containing a whispered version of each word. See the examples. Solve this using map :).

def whisper_words(words)
	return words.map { |word| word.downcase + "..." }
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts

# O Words
# Write a method o_words that takes in a sentence string and returns an array of the words that contain an "o". Use select in your solution!
def o_words(sentence)
	return sentence.split.select { |word| word.include?('o') } 
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts

# Last Index
# Write a method last_index that takes in a string and a character. The method should return the last index where the character can be found in the string.

def last_index(str, char)
	length = str.length - 1
  	while length >=  0
      	if str[length] == char
          return length
        end
      	length -= 1
    end
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7

# Most Vowels
# Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
  	countMost = 0
  	mostVowelWord = ""
  	sentence.split.each do |word|
    	current = countVowels(word)
      	if current > countMost
          countMost = current
          mostVowelWord = word
        end
    end
  	return mostVowelWord
end

def countVowels(word)
  	vowels = "aeiou"
  	count = 0
	word.each_char do |char|
    	if vowels.include?(char)
        	count += 1
        end
    end
  	return count
end

print most_vowels("what a wonderful life") #=> "wonderful"

# Prime
# Write a method prime? that takes in a number and returns a boolean, indicating whether the number is prime. A prime number is only divisible by 1 and itself.

def prime?(num)
	if num < 2
		return false
	end
  
  	(2...num).each do |factor|
    	if num % factor == 0
        	return false
        end
    end
  
  	return true
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false

# Pick Primes
# Write a method pick_primes that takes in an array of numbers and returns a new array containing only the prime numbers.

def pick_primes(numbers)
	primes = []
  	numbers.each do |num| 
    	if isPrime(num) 
        	primes.push(num)
        end
    end
  	return primes
end

def isPrime(num)
	if num < 2
		return false
	end
  
  	(2...num).each do |factor|
    	if num % factor == 0
        	return false
        end
    end
  
  	return true
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts

# Prime Factors
# Write a method prime_factors that takes in a number and returns an array containing all of the prime factors of the given number.

def prime_factors(num)
	primeFactors = []
  	
  	(1..num).each do |i|
    	if num % i == 0 && isPrime(i)
        	primeFactors.push(i)
        end
    end
  
  	return primeFactors
end

def isPrime(num)
	if num < 2
    	return false
    end
  
  	(2...num).each do |i|
    	if num % i == 0
          return false
        end
    end
  return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts

# Greatest Factor Array
# Write a method greatest_factor_array that takes in an array of numbers and returns a new array where every even number is replaced with it's greatest factor. A greatest factor is the largest number that divides another with no remainder. For example the greatest factor of 16 is 8. (For the purpose of this problem we won't say the greatest factor of 16 is 16, because that would be too easy, ha)

def greatest_factor_array(arr)
	gfArray = []
  	arr.each do |num|
    	if num % 2 == 0
        	num = findGreatestFactor(num)
        end
      	gfArray.push(num)
    end
  	return gfArray
end

def findGreatestFactor(num)
	i = num-1
  	while i > 0
    	if num % i == 0
          return i
        end
      	i -= 1
    end
  	return -1
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts

# Perfect Square
# Write a method perfect_square? that takes in a number and returns a boolean indicating whether it is a perfect square. A perfect square is a number that results from multiplying a number by itself. For example, 9 is a perfect square because 3  3 = 9, 25 is a perfect square because 5  5 = 25.

def perfect_square?(num)
	(1...num).each do |i|
    	if i * i == num
          return true
        end
    end
  	return false
end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true

# Triple Sequence
# Write a method triple_sequence that takes in two numbers, start and length. The method should return an array representing a sequence that begins with start and is length elements long. In the sequence, every element should be 3 times the previous element. Assume that the length is at least 1.

def triple_sequence(start, length)
	arr = [start]
  	(1...length).each do |item|
    	arr.push(arr[-1]*3)
    end
  	return arr
end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts

# Summation Sequence
# A number's summation is the sum of all positive numbers less than or equal to the number. For example: the summation of 3 is 6 because 1 + 2 + 3 = 6, the summation of 6 is 21 because 1 + 2 + 3 + 4 + 5 + 6 = 21. Write a method summation_sequence that takes in a two numbers: start and length. The method should return an array containing length total elements. The first number of the sequence should be the start number. At any point, to generate the next element of the sequence we take the summation of the previous element. You can assume that length is not zero.

def summation_sequence(start, length)
  	seq = [start]
  	count = 0
  	while count < length-1
		summation = 0
      	(0..seq[-1]).each do |i|
    		summation += i
    	end
      	seq.push(summation)
      	count += 1
    end
  	return seq
end


print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]

# Fibonacci
# The fibonacci sequence is a sequence of numbers whose first and second elements are 1. To generate further elements of the sequence we take the sum of the previous two elements. For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8. Write a method fibonacci that takes in a number length and returns the fibonacci sequence up to the given length.

def fibonacci(length)
	if length == 0
    	return []
    end
  
  	if length == 1
      return [1]
    end
  
  	seq = [1, 1]
  
  	(2...length).each do |i|
    	seq.push(seq[-1] + seq[-2])
    end
  	
  	return seq
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts

# Caesar Cipher
# Write a method caesar_cipher that takes in a string and a number. The method should return a new string where every character of the original is shifted num characters in the alphabet.

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  	alphabet = "abcdefghijklmnopqrstuvwxyz"
  	cipher = ""

	str.each_char do |char|
      	letterPos = alphabet.index(char)
      	newPos = letterPos + num
      	cipher += alphabet[newPos % 26] # mod so wraps arround
    end
  
  	return cipher
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"

# Vowel Cipher
# Write a method vowel_cipher that takes in a string and returns a new string where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
	vowels = "aeiou"
  	cipher = ""
  
 	string.each_char do |char|
    	if vowels.include?(char)
        	idx = vowels.index(char)
          	char = vowels[(idx + 1) % 5]
        end
      	cipher += char
    end
  
  	return cipher
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap

# Double Letter Count
# Write a method that takes in a string and returns the number of times that the same letter repeats twice in a row.

def double_letter_count(string)
	count = 0	
  	(0...string.length).each do |i|
      	if string[i] == string[i-1]
     		count += 1
        end
    end
  	return count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1

# Adjacent Sum
# Write a method adjacent_sum that takes in an array of numbers and returns a new array containing the sums of adjacent numbers in the original array. See the examples.

def adjacent_sum(arr)
  	sum = []
	arr.each.with_index do |num, i|
      	nextNum = arr[i+1]
      	if nextNum != nil
      		sum.push(num + nextNum)
        end
    end
  	return sum
end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts

# Pyramid Sum
# Write a method pyramid_sum that takes in an array of numbers representing the base of a pyramid. The function should return a 2D array representing a complete pyramid with the given base. To construct a level of the pyramid, we take the sum of adjacent elements of the level below.

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
	sum = [base]
  	
  	while sum.length < base.length
  		sum.unshift(adj_sum(sum[0]))
    end
  
  	return sum
end

def adj_sum(arr)
	sum = []
	arr.each.with_index do |num, i|
      	nextNum = arr[i+1]
      	if nextNum != nil
      		sum.push(num + nextNum)
        end
    end
  	return sum
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts

# All Else Equal
# Write a method all_else_equal that takes in an array of numbers. The method should return the element of the array that is equal to half of the sum of all elements of the array. If there is no such element, the method should return nil.

def all_else_equal(arr)
	sum = 0
  	
  	arr.each do |num|
    	sum += num
    end
  
  	halfSum = sum/2
  
  	if arr.include?(halfSum)
    	return halfSum
    else
      	return nil
    end
end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array

# Anagrams
# Write a method anagrams? that takes in two words and returns a boolean indicating whether or not the words are anagrams. Anagrams are words that contain the same characters but not necessarily in the same order. Solve this without using .sort

def anagrams?(word1, word2)
	return hashLetters(word1) == hashLetters(word2)
end

def hashLetters(word)
	countLetters = Hash.new(0)
  	
  	word.each_char { |char| countLetters[char] += 1 }
  
  	return countLetters
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false

# Consonant Cancel
# Write a method consonant_cancel that takes in a sentence and returns a new sentence where every word begins with it's first vowel.

def consonant_cancel(sentence)
  	newSentence = ""
	sentence.split.each do |word|
    	# puts word
      	newSentence = newSentence + " " + find_vowel(word)
    end
  	return newSentence
end

def find_vowel(word)
	vowels = "aeiou"
  	
  	word.each_char.with_index do |char, i|
    	if vowels.include?(char)
        	return word[i..-1]
        end
    end
  
  	return ""
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"

# Same Char Collapse
# Write a method same_char_collapse that takes in a string and returns a collapsed version of the string. To collapse the string, we repeatedly delete 2 adjacent characters that are the same until there are no such adjacent characters. If there are multiple pairs that can be collapsed, delete the leftmost pair. For example, we take the following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

def same_char_collapse(str)
  reducible = true

  while reducible
    chars = str.split("")
    reducible = false

    chars.each.with_index do |char, i|
      if chars[i] == chars[i + 1]
        chars[i] = ""
        chars[i + 1] = ""
        reducible = true
      end
    end

    str = chars.join("")
  end

  return str
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv