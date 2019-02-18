current_year = 2019

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

years_toGo = retire_age - current_age
retire_year = current_year + years_toGo

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_toGo} years of work to go!"
