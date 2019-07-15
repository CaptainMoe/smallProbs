
def get_content(file)
  string = ''
  file.each do |line|
    string << " " + (line.chomp)
  end
  string
end

def get_sentences(text)
  sentences = text.split(".")
  sentences = sentences.map { |str| str.split('?')}
  sentences = sentences.map do |str|
    if str.is_a?(Array)
      str.map { |str| str.split('!')}
    else
      str
    end
  end
  sentences.flatten
end

def count_sentence(sentence)
  sentence = sentence.split.count
end

def longest_sentence(sentences)
  longest_sentences = sentences.max_by { |sentence| count_sentence(sentence)}

  "#{longest_sentences.strip} \n length: #{count_sentence(longest_sentences)}"
end
content = File.open("ex01.txt")

text = get_content(content)
sentences = get_sentences(text)
long_sent = longest_sentence(sentences)

puts long_sent
