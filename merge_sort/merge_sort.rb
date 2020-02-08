def merge_sort(list)
  sorted = []

  return list if list.length == 1 # base case
  
  mid = list.length/2
  left = merge_sort(list[0...mid])
  right = merge_sort(list[mid..-1])
    
  i = 0 # left loop index
  j = 0 # right loop index
  loop do
    if left[i] < right[j]
      sorted << left[i]
      i += 1
        
      if i == left.length
        sorted << right[j..-1]
        break
      end
    else
      sorted << right[j]
      j += 1
        
      if j == right.length
        sorted << left[i..-1]
        break
      end
    end # if
  end # loop

  sorted.flatten
end


# sample run
p merge_sort([5,8,0,9,2])
p merge_sort([9,2,3,8,5,6])
p merge_sort([2,5,0,7,6,3,1,6,4,5,8])
