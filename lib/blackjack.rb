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
  
  puts sum
end

def hit?(num)
  prompt_user
  get_user_input
  answer = get_user_input
  
  if answer == "h"
    deal_card
  elsif answer == "s"
    display_card_total
  else
    invalid_command
  end
  
  display_card_total
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
    
