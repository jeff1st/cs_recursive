input_array = [23, 43, 1, 45, 76, 789, 474, 3, 98, 34, 23, 5, 9, 987, 1298, 3]

def merge_sort(array, new_array=[])
  if array.length == 1
    new_array << array
    return new_array
  elsif array.length == 2
    array[0] <= array[1] ? (new_array << [array[0], array[1]]) : (new_array << [array[1], array[0]])
    return new_array
  else 
    ln = array.length/2
    return merge_sort(array.slice(0..ln), new_array) + merge_sort(array.slice(ln+1..-1), new_array)
  end
  return new_array
end

new_array = merge_sort(input_array)
puts input_array.inspect
puts new_array.inspect
