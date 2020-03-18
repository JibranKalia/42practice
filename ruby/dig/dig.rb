#########################################
# Problem 2: Dig
#########################################
# Dig is a safe navigator method for arrays and hashes which takes any
# number of arguments representing keys or indices and returns a
# deep nested value if found. Implement a method dig without
# using the native dig method. Your implementation should accept an
# object that responds to [] as the first argument.

def dig haystack, *args
    if haystack.nil?
     return nil
    end
    
    if !haystack.respond_to?(:[])
      raise "cannot dig"
    end
  
    begin
      res = haystack.send(:[], args.first)
    rescue NoMethodError
      return nil
    end
    
    if args.length == 1
      return res
    end
    args.shift
    dig(res, *args)
  end
  
  # Examples
  
  haystack = { foo: 'bar' }
  
  
  puts dig(haystack, :foo) == 'bar'
  
  haystack = ['init', 'val', 'other_val']
  
  puts dig(haystack, 1) == 'val'
  
  haystack = {
    foo: {
      'bar' => [
        100,
        101,
        {
          bar: 'needle'
        }
      ]
    }
  }
  # puts dig(haystack, :foo, 'bar', 2, :bar)
  
  puts dig(haystack, :foo, 'bar', 2, :bar) == 'needle'
  
  # dig should also be semi-safe, such that if an early
  # nil value is found, the final output should return nil
  
  haystack = {
    foo: {
      bar: {
        fu: :bar
      }
    }
  }
  
  puts dig(haystack, :foo, :bar, :not_found, :more, :missing, :keys).nil?
  
  # if dig encounters an existing non-nil value that does not
  # respond to [], an error should be thrown with message
  # "cannot dig"
  
  haystack = {
    foo: {
      bar: false
    }
  }
  
  begin
    dig(haystack, :foo, :bar, :key)
  rescue => e
    puts e
    puts e.to_s == 'cannot dig'
  end