
def substrings_at_start(string)
  arr = []
  string.size.times do |n|
    arr << string.slice(0, n+1)
  end
  arr
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
