# Normal mode

# add if user enters a number outside of the range, return an error.
# fix that ace = 11 - not working below


#hard_hash = Hash.new

#pairs_hash = Hash.new

#soft_hash = {"dealer" => {"total" => "action"}}
#soft_hash[dealer][total] = action
#soft_hash[2][13] = "hit"

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

soft_hash = Hash.new
soft_hash[dealer] = Hash.new
soft_hash[dealer][total] = first # for now, should be action
#soft_hash[dealer] = total
puts soft_hash

#if first == ace || second == ace
#  use soft_hash
#elsif first == second
#  use pairs_hash
#else
#  use hard_hash
#end
