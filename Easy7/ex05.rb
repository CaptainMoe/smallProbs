require 'pry'

def staggered_case(string)
  staggers_arr = string.chars.map.with_index do |char, idx|
    #binding.pry
    if idx.even?
      char.upcase
    else
      char.downcase
    end
  end
  staggers_arr.join("")
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
