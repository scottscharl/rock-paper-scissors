def clear
  system("clear") || system("cls")
end

def wait
  sleep 0.7
end

# start
moves = ["rock", "paper", "scissors"]

clear
puts "Play Rock-Paper-Scissors"
puts ""
puts 'ENTER YOUR NAME:'
name = gets.chomp
wait

clear
puts "Hello, #{name}."
wait
# validate
puts ""
puts "Choose your move by typing one number, then press ENTER:"
puts "1 = Rock"
puts "2 = Paper"
puts "3 = Scissors"
player_move = moves[gets.chomp.to_i-1]
wait

clear
puts "You chose #{player_move.capitalize}"
puts ""
# need to add validation
wait
puts "Press ENTER to play the round."
gets

clear
computer_move = moves[rand(0..2)]
result_msg = ""
check1 = "   "
check2 = "   "
if player_move === computer_move
  # Tie case
  result_msg = "🟰 Tie."
else
  # Winner case
  result = case player_move + "--" + computer_move
    when "rock--paper" then false
    when "rock--scissors" then true
    when "paper--rock" then true
    when "paper--scissors" then false
    when "scissors--rock" then false
    when "scissors--paper" then true
  end
  if result
  result_msg = "🏆 You WON!"
  check1 = " ✓ "
  else result_msg = "❌ You lost."
  check2 = " ✓ "
  end
end

clear
puts "Rock..."
wait
clear
puts "Rock...Paper..."
wait
clear
puts "Rock...Paper...Scissors..."
wait
clear
puts "Rock...Paper...Scissors...SHOOT!"
wait

puts ""
puts result_msg
puts ""
puts check1 +player_move.capitalize + " (you)"
puts "    vs."
puts check2 +computer_move.capitalize + " (computer)"
puts ""

# add play again option if a tie.

exit
