
def staggered_case_Allchar(string)
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

def staggered_case_justAlphates(string)
  needed_upper = true
  staggere_arr = []
  string.chars.each do |char|
    if needed_upper
      staggere_arr << char.upcase
    else
      staggere_arr << char.downcase
    end
    if ('a'..'z').include?(char.downcase)
      needed_upper = !needed_upper
    end
  end
  staggere_arr.join("")
end

def staggered_case(string, alphets=true)
  if alphets == false
    return staggered_case_Allchar(string)
  elsif alphets == true
    return staggered_case_justAlphates(string)
  end
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
