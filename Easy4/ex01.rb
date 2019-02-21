def short_long_short(txt1, txt2)
  if txt1.size < txt2.size
    long = txt2
    short = txt1
  else
    long = txt1
    short = txt2
  end
  short + long + short
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
