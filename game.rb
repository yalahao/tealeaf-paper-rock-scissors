# Pseudo code
=begin

Ask for my choice 
  If choice is valid 
    return choice
  else ask again

Computer makes a choice

Compare choices
  If my_choice == computer_choice
    rematch
  elsif all 6 cases here
    puts results
    update score

=end 

require 'pry'

def say(s)
  puts "--- #{s} ---"
end

def get_choice(options_arr)
  choice = gets.chomp.downcase
  if options_arr.include?(choice)
    return choice
  else 
    say "Invalid choice. Try again. "
    get_choice(options_arr)
  end
end


def show_result(choice1, choice2, choices_hash)
  
  say "You chose #{choices_hash[choice1]}. Computer chose #{choices_hash[choice2]}"
  
  win = "You won!"
  lose = "You lose..."
  paper = "Paper wraps rock."
  scissors = "Scissors cut paper."
  rock = "Rock breaks scissors"

  if choice1 == choice2
    say "It's a draw!"
  elsif (choice1 == 'p' && choice2 == 'r')
    say "#{paper} #{win}"
  elsif (choice1 == 'r' && choice2 == 'p')
    say "#{paper} #{lose}"
  elsif (choice1 == 'p' && choice2 == 's')
    say "#{scissors} #{lose}"
  elsif (choice1 == 's' && choice2 == 'p')
    say "#{scissors} #{win}"
  elsif (choice1 == 'r' && choice2 == 's')
    say "#{rock} #{win}"
  elsif (choice1 == 's' && choice2 == 'r')
    say "#{rock} #{lose}"
  else 
    say "Something went wrong. Restart the game and make sure you choose the valid options."
  end

end

def play_again
  say "Play again? (Y/N)"
  choice = get_choice(['y','n'])
  if choice == 'y'
    play_game
  else
    say "See you next time!"
  end
end

def play_game
  choices = ['p','r','s']
  choices_hash = { "p" => "paper", "r" => "rock", "s" => "scissors"}

  say "Choose your play: (P/R/S)"
  my_choice = get_choice(choices)
  computer_choice = choices.sample

  show_result(my_choice, computer_choice, choices_hash)
  play_again
end

say "Welcome to the Paper, Rock, Scissors game!"
play_game
