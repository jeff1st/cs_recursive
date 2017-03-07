input_array1 = [23, 43, 1, 45, 76, 789, 474, 3, 98, 34, 23, 5, 9, 987, 1298, 3]
input_array2 = [3, 143, 11, 435, 26, 79, 274, 37, 981, 14, 231, 55, 95, 7, 129, 32, 45, 7878]

def merge_sort(array)
  if array.length == 1
    return array
  else
    new_array = []
    ln = array.length/2
    arr1 = merge_sort(array.slice(0..ln-1))
    arr2 = merge_sort(array.slice(ln..-1))
    (0...array.length).each do |i|
      if arr1[0].nil?
        (new_array << arr2[0]; arr2.shift)
      elsif arr2[0].nil?
        (new_array << arr1[0]; arr1.shift)
      else
        (arr1[0] <= arr2[0]) ? (new_array << arr1[0]; arr1.shift) : (new_array << arr2[0]; arr2.shift)
      end
    end
    return new_array
  end
end

new_array1 = merge_sort(input_array1)
puts new_array1.inspect
new_array2 = merge_sort(input_array2)
puts new_array2.inspect
