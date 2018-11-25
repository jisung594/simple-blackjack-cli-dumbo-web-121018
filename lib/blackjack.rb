def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times do
    sum += deal_card
  end
  
  puts display_card_total(sum)
end

def hit?(num)
  prompt_user
  get_user_input
  
  if get_user_input == "h"
    return deal_card + num
  elsif get_user_input != "h" || get_user_input != "s"
    return invalid_command && prompt_user
  end
  
end

def invalid_command
  puts 
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
