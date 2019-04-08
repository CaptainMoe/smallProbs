
def fizzbuzz(start, finish)
  (start..finish).each do |n|
    if n % 3 == 0 && n % 5 == 0
      print "FizzBuzz"
    elsif n % 3 == 0
      print 'Fizz'
    elsif n % 5 == 0
      print 'Buzz'
    else
      print n
    end
    print " "
  end
    print "\n"
end


fizzbuzz(1, 15)
