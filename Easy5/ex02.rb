MIDNIGHT_MINUTES = 1440

def time_of_day(minutes)
  mins_after = before_midnight % MIDNIGHT_MINUTES
  hours, minutes = mins_after.divmod(60)
  format('%02d:%02d', hours, minutes)
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
