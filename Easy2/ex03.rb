puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip = (bill / 100) * tip_percent
total_amout = tip + bill

puts "The tip is $#{tip}"
puts "The total is $#{total_amout}"
