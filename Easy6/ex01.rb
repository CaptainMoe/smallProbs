DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = Integer(angle)
  mins = (angle - degrees) * 60
  seconds = (mins - Integer(mins)) * 60
  format(%(#{degrees}#{DEGREE}%02d'%02d"), mins*-1, seconds*-1)
end
#  format(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)


dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
