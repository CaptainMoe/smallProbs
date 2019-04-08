
def repeater(string)
  double_str = ''
  string.split("").each do |char|
    double_str << char*2
  end
  double_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
