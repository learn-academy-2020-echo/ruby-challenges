
p 'Player 1 type rock, paper or scissors'
player1 = gets.chomp

p 'Player2 type rock, paper or scissors'
player2 = gets.chomp




# rock, paper, scissors same input => "draw again"
if player1.to_s == 'rock' && player2.to_s == 'rock' 
     puts "it's a draw"
elsif player1.to_s == 'scissors' && player2.to_s == 'scissors' 
    puts "it's a draw"
elsif player1.to_s == 'paper' && player2.to_s == 'paper' 
    puts "it's a draw"

## paper beats rock
elsif player1.to_s == 'paper' && player2.to_s == 'rock'
    puts 'Player1 wins'
elsif player1.to_s == 'rock' && player2.to_s == 'paper'
    puts 'Player2 wins'

# scissors beats paper
elsif player1.to_s == 'scissors' && player2.to_s == 'paper'
    puts 'Player1 wins'
elsif player1.to_s == 'paper' && player2.to_s == 'scissors'
    puts 'Player2 wins'

# paper beats rock 
elsif player1.to_s == 'rock' && player2.to_s == 'scissors'
    puts 'Player1 wins'
elsif player1.to_s == 'scissors' && player2.to_s == 'rock'
    puts 'Player2 wins'

end



comparing computer choice against user choice
if $user_input == $choice
    puts "I chose #{$choice} too. It's a tie. Let's try again."
    game
  else
    if $user_input == "rock" && $choice == "paper"
      puts "I chose paper. Paper wraps rock. I win."
    elsif $user_input == "rock" && $choice == "scissors"
      puts "I chose scissors. Rock destroys scissors. You win."
    elsif $user_input == "paper" && $choice == "rock"
      puts "I chose rock. Paper wraps rock. You win."
    elsif $user_input == "paper" && $choice == "scissors"
      puts "I chose scissors. Scissors cut paper. I win."
    elsif $user_input == "scissors" && $choice == "rock"
      puts "I chose rock. Rock destroys scissors. I win."
    elsif $user_input == "scissors" && $choice == "paper"
      puts "I chose paper. Scissors cut paper. You win."
    else
      puts "I didn't understand you. Please try again."
      game
    end #end nested if statement
  end #end if statement
end #end game def