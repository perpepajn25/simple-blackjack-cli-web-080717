def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
    rand(1..11)
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
end

def prompt_user
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    answer = gets.chomp
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    card_total = deal_card + deal_card
    display_card_total(card_total)
    card_total
end

def hit?(current_card_total)
    prompt_user
    user_input = get_user_input
    until user_input == "h" || user_input == "s"
        invalid_command
        user_input=get_user_input
    end
    if user_input == "h"
        current_card_total+=deal_card
    elsif user_input == "s"
        current_card_total
    end
end

def invalid_command
    puts "Please enter a valid command"
    prompt_user
end

def runner
  welcome
  total = initial_round
  until total > 21
      total = hit?(total)
      display_card_total(total)
    end
  end_game(total)
end
    
