
def initialize_bulb(n)
  bulbs = {}
  1.upto(n) do |bulb_num|
    bulbs[bulb_num] = 'OFF'
  end
  bulbs
end

def toggle(hash, nth)
  hash.each do |num, state|
    if num % nth == 0
      state == 'OFF' ? hash[num] = 'ON' : hash[num] = 'OFF'
    end
  end
end

def lights_on(hash)
  hash.select { |num, state| state == "ON"}.keys
end

# I know it's a bad name. I couldn't think of something else.
def thousand_light(n)
  bulbs = initialize_bulb(n)
  1.upto(n) do |sequence|
    toggle(bulbs, sequence)
  end
  lights_on(bulbs)
end

p thousand_light(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
