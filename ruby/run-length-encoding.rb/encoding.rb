#########################################
# Problem 1: Run-length encoding
#########################################
# Run-length encoding (RLE) is a simple encoding algorithm. A run is a 
# repeating sequence of the same element. With RLE repeated runs are 
# stored as a single value and a count, rather than the actual run. 
# The order is important: the count comes first, followed by the value.
# 
# Example:
# "AAAAAAAAAAZZBMMMMM" --> byte[] { 10, ‘A’, 2, ‘Z’, 1, ‘B’, 5, ‘M’ }
# "ABCDEEEFG" --> byte[] { 1, ‘A’, 1, ‘B’, 1, ‘C’, 1, ‘D’, 3, ‘E’, 1, ‘F’, 1, ‘G’ }
#
# Implement a method rle which accepts a string and returns an array
# representing the RLE encoding.
def rle(str)
    res = []
    
    counter = 0
    
    array = str.split("")
    
    array.each_with_index do |curr_char, index|
      is_same = if index == 0
        true
      else
        prev_char = array[index - 1]
        prev_char == curr_char
      end
      
      if is_same
        counter += 1
      else
        res.push(counter)
        res.push(prev_char)
        counter = 1
      end
    end
    res.push(counter)
    res.push(array.last)
  
    res
  end
  
  #.each_with_object([]) do |iter, obj|
  
  examples = {
    'AAAAAAAAAAZZBMMMMMAA' => [10, 'A', 2, 'Z', 1, 'B', 5, 'M', 2, 'A'],
    'ABCDEEEFGBB' => [1, 'A', 1, 'B', 1, 'C', 1, 'D', 3, 'E', 1, 'F', 1, 'G', 2, 'B']
  }
  
  # examples.each do |str, correct|
  #   res = rle(str)
  #   puts "[#{res == correct}] rle('#{str}') returned '#{res}'" 
  # end
  