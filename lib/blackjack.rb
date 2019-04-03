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
  gets.chomp
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
  user_input = get_user_input
    if user_input == "h"
      return num + deal_card
    elsif user_input == "s"
      return num
    else
      invalid_command
      prompt_user
    end
end

def invalid_command
 puts "Please enter a valid command"
end


def runner
  welcome
  card_total = initial_round
    until card_total >= 21
      hit?(card_total)
      display_card_total(card_total)
    end
  end_game
end
