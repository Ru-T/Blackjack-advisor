# Normal mode

#TO DO:
# If/Else to determine which hash within the hash (soft, hard, pairs)
# Need to create all three hashes >> Ranges within hashes aren't working --> speed up the creation, not the calling

# nice to have: return error outside of worth range (2-10, A or 11)

def evaluate_card (card)
  if card == "A"
    11
  else
    card
  end
end

blackjack_hash = Hash.new
blackjack_hash = {"soft" => {2 => {13 => "HIT"}}, "hard" => {3 => {15 => "STAND"}}, "pairs" => {5 => {14 => "DOUBLE HIT"}}}

puts "This is a game of Blackjack. Please enter the worth of the card - 2 to 10 or A, which is 11."

puts "Please enter your first card."
first = gets.chomp
puts "Please enter your second card."
second = gets.chomp
puts "Please enter the dealer's card."
dealer = gets.chomp

first_card = evaluate_card(first).to_i
second_card = evaluate_card(second).to_i
dealer_card = evaluate_card(dealer).to_i

total = first_card + second_card

puts "Your total is #{total}. The dealer has #{dealer_card}."
if first_card == second_card
  puts "Your optimal next move is #{blackjack_hash["pairs"][dealer_card][total]}!"
elsif first_card == 11 || second_card == 11
  puts "Your optimal next move is #{blackjack_hash["soft"][dealer_card][total]}!"
else
  puts "Your optimal next move is #{blackjack_hash["hard"][dealer_card][total]}!"
end
