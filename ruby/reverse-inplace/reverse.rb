def reverse!(string)

  # Reverse the input string in place
  right_index = 0
  left_index = string.length - 1
  while right_index < left_index
    string[left_index], string[right_index] = string[right_index], string[left_index]

    right_index += 1
    left_index -= 1
  end
  string
end


# Tests

def run_tests
  desc = 'empty string'
  string = ''
  reverse!(string)
  expected = ''
  assert_equal(string, expected, desc)

  desc = 'single character string'
  string = 'A'
  reverse!(string)
  expected = 'A'
  assert_equal(string, expected, desc)

  desc = 'longer string'
  string = 'ABCDE'
  reverse!(string)
  expected = 'EDCBA'
  assert_equal(string, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests