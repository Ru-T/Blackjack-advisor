# Normal mode

#NEEDS RANGES

#soft_hash = {"dealer" => {"total" => "action"}}
#soft_hash[dealer][total] = action
#soft_hash[2][13] = "hit"

soft_hash = {2 => {13 => "hit", 17 => "double hit", 18 => "stand"},
            4 => {13 => "double hit", 19 => "stand"},
            7 => {13 => "hit", 18 => "stand"}}

puts "This is a game of Blackjack. Please enter the worth of the card - between 2 and 10 or A, which is 11."
puts "IMPORTANT: For face cards (Jack, Queen, King), please enter 10."

puts "Please enter your first card."
first = gets.chomp.to_i

puts "Please enter your second card."
second = gets.chomp.to_i

puts "Please enter the dealer's card."
dealer = gets.chomp.to_i

#puts "Your optimal move is #{action}!"

total = first + second
#soft_hash[dealer][total] = action

puts soft_hash[dealer][total]

#soft_hash[dealer] = total
#puts soft_hash

#if first == ace || second == ace
#  use soft_hash
#elsif first == second
#  use pairs_hash
#else
#  use hard_hash
#end
