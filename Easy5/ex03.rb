require 'pry'

def after_midnight(time)
  #binding.pry
  hours, mins = time.split(":").map {|num| num.to_i}
  if hours != 24
    (hours * 60) + mins
  else
    mins
  end
end

def before_midnight(time)
  hours, mins = time.split(":").map {|num| num.to_i}
  if hours != 24
    (hours * 60) - mins
  else
    mins
  end
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
