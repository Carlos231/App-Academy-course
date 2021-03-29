#!/usr/bin/env ruby

# Word Lengths
# Write a method word_lengths that takes in a sentence string and returns a hash where every key is a word of the sentence, and its' corresponding value is the length of that word.

def word_lengths(sentence)
	words = sentence.split(" ")
	wordsHash = Hash.new(0)
  	words.each { |value| 
    	wordsHash[value] = value.length
    }
  
  	return wordsHash
end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}

# Ae Count
# Write a method ae_count that takes in a string and returns a hash containing the number of a's and e's in the string. Assume the string contains only lowercase characters.

def ae_count(str)
	lettersCount = Hash.new(0)
	str.each_char { |letter|
    	if ( letter === 'a' || letter === 'e')
        	lettersCount[letter]+=1
        end
    }
  return lettersCount
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}

# Select Upcase Keys
# Write a method select_upcase_keys that takes in a hash and returns a new hash containing key-value pairs of the original hash that had uppercase keys. You can assume that the keys will always be strings.

def select_upcase_keys(hash)
	uppercaseHash = {}
  	hash.each do |key, val|
      	if (key === key.upcase)
        	uppercaseHash[key] = val
        end
    end
  	return uppercaseHash
end

print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4}) # => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
puts

# Hand Score
# Write a method hand_score that takes in a string representing a hand of cards and returns it's total score. You can assume the letters in the string are only A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point. The letters of the input string not necessarily uppercase.

def hand_score(hand)
	possible = {
    	'A' => 4,
      	'K' => 3,
      	'Q' => 2,
      	'J' => 1
    }
  	score = 0
  	hand.each_char { |letter|
      score += possible[letter.upcase]
    }
	return score
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9

# Frequent Letters
# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
	characters = []
  	lettersCount = Hash.new(0)
  
  	string.each_char { |letter|
    	lettersCount[letter] += 1
      	if lettersCount[letter] > 2 && !characters.include?(letter)
        	characters.push(letter)
        end
    }
  	return characters
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts

# Hash To Pairs
# Write a method hash_to_pairs that takes in a hash and returns a 2D array representing each key-value pair of the hash.

def hash_to_pairs(hash)
  	pairs = []
	hash.each do |key, val|
    	pairs.push([key, val])
    end
  	return pairs
end


print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts


print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts

# Unique Elements
# Write a method unique_elements that takes in an array and returns a new array where all duplicate elements are removed. Solve this using a hash.

# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
	hash_elements = {}
  	arr.each { |ele| 
      hash_elements[ele] = true 
    }
  	return hash_elements.keys
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts

# Element Replace
# Write a method element_replace that takes in an array and a hash. The method should return a new array where elements of the original array are replaced with their corresponding values in the hash.

def element_replace(arr, hash)
	for i in 0..arr.length-1
    	elem = arr[i]
      	if hash.has_key?(elem)
      		arr[i] = hash[elem]
        end
    end
  	return arr
end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bork", "cat"=>"meow", "duck"=>"quack"}
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts