
def penultimate(string)
  str_arr = string.split(" ")
  str_arr[-2]
end


penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
