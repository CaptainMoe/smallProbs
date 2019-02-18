def count_occurrences(vehicles)
  freq = Hash.new(0)
  vehicles.each do |car|
    freq[car] += 1
  end
  freq
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
