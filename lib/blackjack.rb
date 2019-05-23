require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end
# binding.pry

def hit?(player_card_total)
   prompt_user
   input = get_user_input
   until input == 'h' || input == 's'
     invalid_command
     prompt_user
     input = get_user_input
   end
    if input == 'h'
      player_card_total += deal_card
    else input == 's'
      player_card_total
    end
end

def invalid_command
  if get_user_input == [a, b, c, d,]
    puts "invalid_command"
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  player_card_total = initial_round
  until player_card_total > 21
    player_card_total = hit?(player_card_total)
    display_card_total(player_card_total)
  end
end_game(player_card_total)
end
