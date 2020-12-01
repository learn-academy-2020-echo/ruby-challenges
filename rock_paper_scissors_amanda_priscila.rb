# Story: As user 1, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

# Story: As user 2, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

# Story: As a user, I can see a message in the terminal saying if user 1 or user 2 won the round.

# Story: As a user, I can see a message in the terminal saying if there was a tie.


p 'user one: please enter rock, paper, or scissors'
user_one_input = gets.chomp

p 'user two: please enter rock, paper, or scissors'
user_two_input = gets.chomp


if user_one_input == user_two_input
  puts 'There was a tie'
elsif user_one_input == 'rock' && user_two_input == 'scissors' 
  puts "User one wins! #{user_one_input} beats #{user_two_input}"
elsif user_two_input == 'rock' && user_one_input == 'scissors'
  puts "User two wins! #{user_two_input} beats #{user_one_input}"
elsif user_one_input == 'paper' && user_two_input == 'rock'
  puts "User one wins! #{user_one_input} beats #{user_two_input}"
elsif user_two_input == 'paper' && user_one_input == 'rock'
  puts "User two wins! #{user_two_input} beats #{user_one_input}"
elsif user_one_input == 'scissors' && user_two_input == 'paper'
  puts "User one wins! #{user_one_input} beats #{user_two_input}"
elsif user_two_input == 'scissors' && user_one_input == 'paper'
  puts "User two wins! #{user_two_input} beats #{user_one_input}"
else 
  puts 'something went wrong'
end