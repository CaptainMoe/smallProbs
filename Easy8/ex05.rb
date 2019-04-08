def substrings_at_start(string)
  arr = []
  string.size.times do |n|
    arr << string.slice(0, n+1)
  end
  arr
end

def substrings(string)
  array = []

  string.size.times do |n|
    array += substrings_at_start(string[n, string.size-n])
  end
  array
end

def reverse(word)
  new_string = ''
  counter = 1
  while counter <= word.length
    new_string << word[-counter]
    counter += 1
  end
  new_string
end

def palindrome?(text)
  text == reverse(text) && text.size > 1
end

def palindromes(string)
  array = []
  substrings(string).each do |str|
    array << str if palindrome?(str)
  end
  array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
