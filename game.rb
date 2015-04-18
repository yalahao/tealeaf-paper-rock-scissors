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

Keep score

=end 

require 'pry'

def say(s)
  puts "--- #{s} ---"
end

def get_choice(options_arr)
  say "Choose one: (P/R/S)"
  choice = gets.chomp.downcase
  if options_arr.include?(choice)
    return choice
  else 
    say "Invalid choice. Try again. "
    get_choice(options_arr)
  end
end

def show_choices(choice1, choice2, choices_hash)
  say "You chose #{choices_hash[choice1]}. Computer chose #{choices_hash[choice2]}"
end

def compare(choice1, choice2)
#  if choice1 == choice2
end


choices = ['p','r','s']
choices_hash = { "p" => "paper", "r" => "rock", "s" => "scissors"}
my_choice = get_choice(choices)
computer_choice = choices.sample
show_choices(my_choice, computer_choice, choices_hash)

