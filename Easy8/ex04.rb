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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
