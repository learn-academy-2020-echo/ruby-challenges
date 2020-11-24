rps_array = []

puts "player 1: type either rock, paper, or scissors"
player1 = gets.chomp

rps_array << player1

#push the value of player1's choice into an array

puts "player 2: type either rock, paper, or scissors"
player2 = gets.chomp

rps_array << player2

if rps_array.include?('rock') && rps_array.include?('paper')
  p "Condition 1: Player #{(rps_array.index 'paper') + 1} wins! "
elsif rps_array.include?('scissors') && rps_array.include?('paper')
  p "Condition 2: Player #{(rps_array.index 'scissors') + 1} wins! "
elsif rps_array.include?('rock') && rps_array.include?('scissors')
  p "Condition 3: Player #{(rps_array.index 'rock') + 1} wins! "
else
  p "Only enter rock, paper, or scissors!"
end

#if player 1 chooses rock and player 2 chooses scissors player 1 wins
#
