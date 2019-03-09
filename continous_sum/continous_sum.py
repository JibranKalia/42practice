def large_cont_sum(arr):
  if len(arr) == 0:
    return 0
  max_sum = current_sum = arr[0]
  for num in arr[1:]:
    if current_sum < 0:
      current_sum = num
    else:
      current_sum = current_sum + num
    max_sum = max(current_sum, max_sum)
  return max_sum


arr = [3, 2, 1, -7, 10] 
print(large_cont_sum(arr))
