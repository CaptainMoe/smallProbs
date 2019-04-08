
def greetings(arr, hash)
  puts "Hello #{arr.join(" ")}, Great to have #{hash.values.join(" ")}"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
