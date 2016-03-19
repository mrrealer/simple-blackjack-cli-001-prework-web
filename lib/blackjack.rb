def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
    return puts "Sorry, you hit #{card_total}. Thanks for playing!"
end


#This method represents the first round of the game for a given player. It should call on the #deal_card method twice, use the #display_card_total method to puts out the sum and then return the sum. This method will therefore call on two other helper methods, #deal_card and #display_card_total, which takes in an argument of the sum of both invocations of #deal_card.
def initial_round
  sum = deal_card + deal_card
  return display_card_total(sum)
end

def hit?(initial_round)
  prompt_user
  user_input = get_user_input
  if input == "h" 
    card_total +=deal_card 
  elsif
    user_input =="s"
    card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# def runner
#   welcome
#   initial_round
#   hit?(initial_round)
#   display_card_total(initial_round)
#   until 
#     card_total > 21
#   end
#   end_game
# end

# runner
    
