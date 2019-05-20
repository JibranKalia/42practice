def merge_arrays(arr1, arr2)

  # Combine the sorted arrays into one large sorted array
  ret = []
  i1 = 0
  i2 = 0
  len1 = arr1.length
  len2 = arr2.length

  while i1 < len1 && i2 < len2
    if arr1[i1] <= arr2[i2]
      ret.push(arr1[i1])
      i1 += 1
    else
      ret.push(arr2[i2])
      i2 += 1
    end
  end
  while i1 < len1
    ret.push(arr1[i1])
    i1 += 1
  end
  while i2 < len2
    ret.push(arr2[i2])
    i2 += 1
  end

  ret
end


















# Tests

def run_tests
  desc = 'both arrays are empty'
  actual = merge_arrays([], [])
  expected = []
  assert_equal(actual, expected, desc)

  desc = 'first array is empty'
  actual = merge_arrays([], [1, 2, 3])
  expected = [1, 2, 3]
  assert_equal(actual, expected, desc)

  desc = 'second array is empty'
  actual = merge_arrays([5, 6, 7], [])
  expected = [5, 6, 7]
  assert_equal(actual, expected, desc)

  desc = 'both arrays have some numbers'
  actual = merge_arrays([2, 4, 6], [1, 3, 7])
  expected = [1, 2, 3, 4, 6, 7]
  assert_equal(actual, expected, desc)

  desc = 'arrays are different lengths'
  actual = merge_arrays([2, 4, 6, 8], [1, 7])
  expected = [1, 2, 4, 6, 7, 8]
  assert_equal(actual, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests