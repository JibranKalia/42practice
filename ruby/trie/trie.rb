class Trie

  def initialize
    @root_node = {}
  end

  def add_word(word)
    current_node = @root_node
    is_new_word = false

    word.each_char do |char|
      unless current_node.has_key? char
        is_new_word = true
        current_node[char] = {}
      end
      current_node = current_node[char]
    end

    unless current_node.has_key? :end_of_word
      is_new_word = true
      current_node[:end_of_word] = {}
    end

    puts @root_node

    is_new_word
  end
end


# Tests

def run_tests
  trie = Trie.new

  result = trie.add_word('catch')
  assert_true(result, 'new word 1')

  result = trie.add_word('cakes')
  assert_true(result, 'new word 2')

  result = trie.add_word('cake')
  assert_true(result, 'prefix of existing word')

  result = trie.add_word('cake')
  assert_false(result, 'word already present')

  result = trie.add_word('caked')
  assert_true(result, 'new word 3')

  result = trie.add_word('catch')
  assert_false(result, 'all words still present')

  result = trie.add_word('')
  assert_true(result, 'empty word')

  result = trie.add_word('')
  assert_false(result, 'empty word present')


end

def assert_true(value, desc)
  puts "#{desc} ... #{value ? 'PASS' : "FAIL: #{value} is not true"}"
end

def assert_false(value, desc)
  puts "#{desc} ... #{value ? "FAIL: #{value} is not false" : 'PASS'}"
end


run_tests