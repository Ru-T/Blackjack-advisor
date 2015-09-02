# Normal mode

def evaluate_card (card)
  if card == "A"
    11
  else
    card
  end
end

blackjack_hash = Hash.new

blackjack_hash = {"soft" =>
  {2 => {13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "DOUBLE HIT", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
   3 => {13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "DOUBLE HIT", 18 => "DOUBLE STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
   4 => {13 => "DOUBLE HIT", 14 => "DOUBLE HIT", 15 => "DOUBLE HIT", 16 => "DOUBLE HIT", 17 => "DOUBLE HIT", 18 => "DOUBLE STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
   5 => {13 => "DOUBLE HIT", 14 => "DOUBLE HIT", 15 => "DOUBLE HIT", 16 => "DOUBLE HIT", 17 => "DOUBLE HIT", 18 => "DOUBLE STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
   6 => {13 => "DOUBLE HIT", 14 => "DOUBLE HIT", 15 => "DOUBLE HIT", 16 => "DOUBLE HIT", 17 => "DOUBLE HIT", 18 => "DOUBLE STAND", 19 => "DOUBLE STAND", 20 => "STAND", 21 => "STAND"},
   7 => {13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "HIT", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
   8 => {13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "HIT", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
   9 => {13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "HIT", 18 => "HIT", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
  10 => {13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "HIT", 18 => "HIT", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
  11 => {13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "HIT", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"}}}

  blackjack_hash = {"hard" =>
    {2 => {5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "HIT", 9 => "DOUBLE HIT", 10 => "DOUBLE HIT", 11 => "DOUBLE HIT", 12 => "HIT", 13 => "STAND", 14 => "STAND", 15 => "STAND", 16 => "STAND", 17 => "STAND", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
     3 => {5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "HIT", 9 => "DOUBLE HIT", 10 => "DOUBLE HIT", 11 => "DOUBLE HIT", 12 => "HIT", 13 => "STAND", 14 => "STAND", 15 => "STAND", 16 => "STAND", 17 => "STAND", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
     4 => {5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "HIT", 9 => "DOUBLE HIT", 10 => "DOUBLE HIT", 11 => "DOUBLE HIT", 12 => "STAND", 13 => "STAND", 14 => "STAND", 15 => "STAND", 16 => "STAND", 17 => "STAND", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
     5 => {5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "DOUBLE HIT", 9 => "DOUBLE HIT", 10 => "DOUBLE HIT", 11 => "DOUBLE HIT", 12 => "STAND", 13 => "STAND", 14 => "STAND", 15 => "STAND", 16 => "STAND", 17 => "STAND", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
     6 => {5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "DOUBLE HIT", 9 => "DOUBLE HIT", 10 => "DOUBLE HIT", 11 => "DOUBLE HIT", 12 => "STAND", 13 => "STAND", 14 => "STAND", 15 => "STAND", 16 => "STAND", 17 => "STAND", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
     7 => {5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "HIT", 9 => "HIT", 10 => "DOUBLE HIT", 11 => "DOUBLE HIT", 12 => "HIT", 13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "STAND", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
     8 => {5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "HIT", 9 => "HIT", 10 => "DOUBLE HIT", 11 => "DOUBLE HIT", 12 => "HIT", 13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "STAND", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
     9 => {5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "HIT", 9 => "HIT", 10 => "DOUBLE HIT", 11 => "DOUBLE HIT", 12 => "HIT", 13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "STAND", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
     10 => {5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "HIT", 9 => "HIT", 10 => "HIT", 11 => "DOUBLE HIT", 12 => "HIT", 13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "STAND", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"},
     11 => {5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "HIT", 9 => "HIT", 10 => "HIT", 11 => "DOUBLE HIT", 12 => "HIT", 13 => "HIT", 14 => "HIT", 15 => "HIT", 16 => "HIT", 17 => "STAND", 18 => "STAND", 19 => "STAND", 20 => "STAND", 21 => "STAND"}}}

     blackjack_hash = {"pairs" =>
       {2 => {2 => "SPLIT", 3 => "SPLIT", 4 => "HIT", 5 => "DOUBLE HIT", 6 => "SPLIT", 7 => "SPLIT", 8 => "SPLIT", 9 => "SPLIT", 10 => "STAND", 11 => "SPLIT"},
        3 => {2 => "SPLIT", 3 => "SPLIT", 4 => "HIT", 5 => "DOUBLE HIT", 6 => "SPLIT", 7 => "SPLIT", 8 => "SPLIT", 9 => "SPLIT", 10 => "STAND", 11 => "SPLIT"},
        4 => {2 => "SPLIT", 3 => "SPLIT", 4 => "SPLIT", 5 => "DOUBLE HIT", 6 => "SPLIT", 7 => "SPLIT", 8 => "SPLIT", 9 => "SPLIT", 10 => "STAND", 11 => "SPLIT"},
        5 => {2 => "SPLIT", 3 => "SPLIT", 4 => "SPLIT", 5 => "DOUBLE HIT", 6 => "SPLIT", 7 => "SPLIT", 8 => "SPLIT", 9 => "SPLIT", 10 => "STAND", 11 => "SPLIT"},
        6 => {2 => "SPLIT", 3 => "SPLIT", 4 => "SPLIT", 5 => "DOUBLE HIT", 6 => "SPLIT", 7 => "SPLIT", 8 => "SPLIT", 9 => "SPLIT", 10 => "STAND", 11 => "SPLIT"},
        7 => {2 => "SPLIT", 3 => "SPLIT", 4 => "HIT", 5 => "DOUBLE HIT", 6 => "SPLIT", 7 => "SPLIT", 8 => "SPLIT", 9 => "STAND", 10 => "STAND", 11 => "SPLIT"},
        8 => {2 => "HIT", 3 => "SPLIT", 4 => "HIT", 5 => "DOUBLE HIT", 6 => "HIT", 7 => "SPLIT", 8 => "SPLIT", 9 => "SPLIT", 10 => "STAND", 11 => "SPLIT"},
        9 => {2 => "HIT", 3 => "HIT", 4 => "HIT", 5 => "DOUBLE HIT", 6 => "HIT", 7 => "HIT", 8 => "SPLIT", 9 => "SPLIT", 10 => "STAND", 11 => "SPLIT"},
        10 => {2 => "HIT", 3 => "HIT", 4 => "HIT", 5 => "HIT", 6 => "HIT", 7 => "STAND", 8 => "SPLIT", 9 => "STAND", 10 => "STAND", 11 => "SPLIT"},
        11 => {2 => "HIT", 3 => "HIT", 4 => "HIT", 5 => "HIT", 6 => "HIT", 7 => "HIT", 8 => "SPLIT", 9 => "STAND", 10 => "STAND", 11 => "SPLIT"}}}

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
