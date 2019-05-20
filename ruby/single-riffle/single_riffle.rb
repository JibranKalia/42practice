def single_riffle?(half1, half2, shuffled_deck)
  i = 0
  j = 0
  res = true
  shuffled_deck.each do |val|
    if i < half1.length && half1[i] == val
      i += 1
    elsif j < half2.length && half2[j] == val
      j += 1
    else
      res = false
      break
    end
  end
  res
end


















# Tests

def run_tests
  desc = 'both halves are the same length'
  result = single_riffle?([1, 4, 5], [2, 3, 6], [1, 2, 3, 4, 5, 6])
  assert_true(result, desc)

  desc = 'halves are different lengths'
  result = single_riffle?([1, 5], [2, 3, 6], [1, 2, 6, 3, 5])
  assert_false(result, desc)

  desc = 'one half is empty'
  result = single_riffle?([], [2, 3, 6], [2, 3, 6])
  assert_true(result, desc)

  desc = 'shuffled deck is missing cards'
  result = single_riffle?([1, 5], [2, 3, 6], [1, 6, 3, 5])
  assert_false(result, desc)

  desc = 'shuffled deck has extra cards'
  result = single_riffle?([1, 5], [2, 3, 6], [1, 2, 3, 5, 6, 8])
  assert_false(result, desc)
end

def assert_true(value, desc)
  puts "#{desc} ... #{value ? 'PASS' : "FAIL: #{value} is not true"}"
end

def assert_false(value, desc)
  puts "#{desc} ... #{value ? "FAIL: #{value} is not false" : 'PASS'}"
end

run_tests