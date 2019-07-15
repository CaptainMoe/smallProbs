require 'pry'

BLOCKS = %w(HU BO XK DQ CP NA GT RE FS JW VI LY ZM).freeze

def block_word?(word)
  up_word = word.upcase
  BLOCKS.all? do |block|
    up_word.count(block) < 2
  end
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
