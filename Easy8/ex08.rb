
def repeater(string)
  double_str = ''
  string.split("").each do |char|
    double_str << char*2
  end
  double_str
end

def double_consonants(str)
  const_double = ''
  vowels = ['a', 'e', 'i', 'o', 'u']
  alphabet = Array('a'..'z')
  str.chars.each do |char|
    if vowels.include?(char.downcase)
      const_double << char
    elsif alphabet.include?(char.downcase)
      const_double << repeater(char)
    else
      const_double << char
    end
  end
  const_double
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
