require 'Date'

def friday_13th(year)
  thirteenth = Date.new(year, 1, 13)
  unlucky_day = 0
  12.times do
    unlucky_day += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_day
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
