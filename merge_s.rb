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
