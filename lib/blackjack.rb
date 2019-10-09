def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return Random.new.rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total=deal_card+deal_card
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  case get_user_input
  when 'h'
    total+=deal_card
  when 's'
    # do nothing
  else
    invalid_command
    prompt_user
  end
  return total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total=initial_round
  while total < 30
    total=hit?(total)
  display_card_total(total)
  end
  end_game(total)
end
    
