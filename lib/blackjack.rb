def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1..11) #randomly generates and returns a number between 1 and 11
end

def display_card_total(number) # method accepts an agrument of a number
  puts "Your cards add up to #{number}" # puts out phrase that displays sum of of a players cards
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" # puts phrase that will require player input
end

def get_user_input
  input = gets # uses `gets` method to capture player input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!" # puts phrase that includes player card total
end

def initial_round
first_round = deal_card + deal_card #method that calls on `deal_card` method twice
  display_card_total(first_round) # calls on `display_card_total` with the arguement of the sum of `first_round`
  return first_round
end

def hit?(card_total) # method accepts an agrgument of player current card total
  prompt_user # uses `prompt_user` method
  input = get_user_input # method to prompt user and store input
  until input == "h" || "s" # using the until loop to to ensure player input value is the either "h" or "s"
    invalid_command # otherwise inacting the `invalid_command` method
    prompt_user
    input = get_user_input
  end

  if input == "h" # if player inputs "h"
    card_total += deal_card # a new card is dealt
  elsif input == 's' # if player input is "s"
  card_total
  end
end

def invalid_command
  puts "Please enter a valid command" # puts phrase
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome # runs `welcome` method
  card_total = initial_round # method to deal cards to player
  until card_total > 21 # using `until` loop constructor and `card_total` method to run the below if total is under 21
    card_total = hit?(card_total) #enacting game play
    display_card_total(card_total)
  end
end_game(card_total)
end
