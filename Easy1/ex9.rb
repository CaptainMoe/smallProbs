def sum(n)
  n_array = n.to_s.chars.map {|n_string| n_string.to_i}
  n_array.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
