
def triangle(height)
  height.times do |n|
    puts " " * (height - (n+1)) + "*" * (n+ 1)
  end
end

triangle(5)
triangle(9)
