# Normal mode

#TO DO:
# Ace isn't working
# Ranges within hashes aren't working --> speed up the creation, not the calling
# If/Else logic for which hash to go to isn't working
# Need hashes for hard and pair
# nice to have: return error outside of worth range (2-10, A or 11)

#n_hash[dealer][total] = action
blackjack_hash = Hash.new
blackjack_hash = {"soft" => {2 => {13 => "hit"}}}

puts "This is a game of Blackjack. Please enter the worth of the card - 2 to 10 or A, which is 11."
puts "Please enter your first card."
first = gets.chomp.to_i
puts "Please enter your second card."
second = gets.chomp.to_i
puts "Please enter the dealer's card."
dealer = gets.chomp.to_i

total = first + second
puts "Your optimal move is #{blackjack_hash["soft"][dealer][total]}!"
