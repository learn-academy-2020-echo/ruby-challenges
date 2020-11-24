
puts "Enter rock paper or scissors"


puts "Player1"
user1 = gets.chomp
puts "Player2"
user2 = gets.chomp

win1 = "Player 1"
win2 = "Player 2"




  if user1 == 'scissors' && user2 == 'paper'
    puts "#{win1} is the winner"

  elsif user1 == 'scissors' && user2 == 'rock'
    puts "#{win2} is the winner"

  elsif user1 == 'scissors' && user2 == 'scissors'
    puts "TIE!"

  elsif user1 == 'rock' && user2 == 'paper'
    puts "#{win2} Is the winner"

  elsif user1 == 'rock' && user2 == 'rock'
    puts "TIE!"

  elsif user1 == 'rock' && user2 == 'scissors'
    puts "#{win1} is the winner"

  elsif user1 == 'paper' && user2 == 'paper'
    puts "TIE!"

  elsif user1 == 'paper' && user2 == 'rock'
    puts "#{win1} is the winner"

  elsif user1 == 'paper' && user2 == 'scissors'
    puts "#{win2} is the winner"

  else
  puts "Make sure you typed rock paper or scissors correctly"


end
