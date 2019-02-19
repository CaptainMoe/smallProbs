def xor?(bol1, bol2)
  (bol1 == true && bol2 == false) ||
  (bol1 == false && bol2 == true)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
