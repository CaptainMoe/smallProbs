require 'pry'

def stars(num)
  sequance = 0
  center = (num / 2) + 1
  stars = []
  1.upto(center) do |n|
    stars << n + sequance
    sequance += 1
  end
  stars2 = stars.clone
  stars2.pop
  stars += stars2.reverse
end

def hungry_diamond(num)
  stars = stars(num )
  stars.each do |star|
    space = (num-star) / 2
    btw_stars = star - 2
    print " " * space
    if star > 1
      print "*"
      print " " * btw_stars
      print "*"
    elsif star < 2
      print "*" * star
    end
    puts ""
  end
end

def diamond(num)
  stars = stars(num )
  stars.each do |star|
    space = (num-star) / 2
    print " " * space
    print "*" * star
    puts ""
  end
end

p diamond(11)

p hungry_diamond(11)
