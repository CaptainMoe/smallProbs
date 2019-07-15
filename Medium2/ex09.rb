
def switch_nums(array) #switch the conscutive elements in asceding order
  counter = 1
    while counter < array.size
      if array[counter - 1] > array[counter]
        array[counter], array[counter-1] = array[counter-1],  array[counter]
      end
      counter += 1
    end
  array
end

def bubble_sort!(array)
  (array.size - 1).times do
    switch_nums(array)
  end
  array
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
