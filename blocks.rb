
#//.times do//
# my_num = 7

# my_num.times do
#     puts 'hello'
# end


# ///.each do//
# nums = [5, 6, 9]

# # nums.each do |value|
# #     puts value
# # end

# # p nums

# #///.each do with {}// replaces do and end

# nums.each { |value| puts value }


#// blocks can have multiple parameters//
# nums = [23,4,5]
# nums.each_with_index do |value, index|
#     puts "#{index.to_s} #{value.to_s}"
# end

# p nums

# nums.each_with_index {|value,index| puts "#{index.to_s} #{value.to_s}"}

#// while = the while method is a little bit different in thar it doesnt take a block  as an argument . A while loop requires a starting value and runs until a particular condintiomn is met.//

# i = 0
# while i < 5
#     puts i
#     i += 1
# end

#///maps do = Ruby map method also lets you do something with every element of an arrar. Map return a new array filled with whatever gets returned by the block each time it runs//

# my_array = [4,7,8]

# # my_array.map do |value|
# #    puts value * value
# # end


# my_array.map { |value| value * value}


#//note the original array is untouched. To modifiy the original array use the bang operator.//

# my_array = [1,2,3]

# my_array.map! do |value|
#     value * value
# end

# p my_array

#challenges

# Write a loop that prints the numbers 1 to 20.

# i = 0
# while i < 21
#     puts i
#     i+=1
# end

# Write a loop that prints the numbers 1 to 20 using a different approach than previously used.
# number = 1
# 20.times do
#    p number 
#    number +=1
# end

# Write a loop that prints only even numbers from 20 to 0.

# 0.step 20  , 2 do |x|
#     puts "#{x}"
# end
# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.

# def new_array array
#     array.map do |value|
# value * 5
#     end
# end

# p new_array [2,5,10]

# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.


# words = ["love", "me", "please"]
# def new_array array
#     array.map! do  | value|
#         value.upcase
#     end
# end
# p new_array words
# p words


# Create a method that takes in an array of numbers and returns the largest number in the array.

# numbers = [2,4,6,8,9,89,90]

# # p numbers.max


# # Create a method that takes in an array of numbers and returns the smallest number in the array.

# p numbers.min

# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

odd_nums = [1,2,3,4,5,6,7,8]

def new_array array
    array.select do | value |
        value.odd?
        end
    end

p new_array odd_nums

# Create a method that takes in an array of strings and returns all the strings in reverse casing.

# banana = ["cool", "lame", "foo"]

# def new_array value
#     banana.length do |value|
#         array.reverse
#     end
# end

# p new_array 

  




#-All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.
# Create a method that takes in an array of words and returns all the words that start with a particular letter. 
#-Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].
# FIZZBUZZ
# Write a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.