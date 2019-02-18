def stringy(n)

  n_string = ''
  counter = 1

  while counter <= n
    if counter.odd?
      n_string << '1'
    else
      n_string << '0'
    end
    counter += 1
  end
  n_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
