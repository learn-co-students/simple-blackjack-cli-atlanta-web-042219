def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  x = deal_card + deal_card
  display_card_total(x)
  return x
end

def hit?(num)
  prompt_user
  get_user_input
    if "h"
      return num + deal_card
    elsif "s"
      return num
    else
      invalid_command
    end
  return num
end

def invalid_command
 puts "Please enter a valid command"
 prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
