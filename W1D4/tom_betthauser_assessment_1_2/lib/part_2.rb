def element_count(array)
  hash = Hash.new(0)
  array.each { |ele| hash[ele] += 1 }
  hash
end

def char_replace!(string, hash)
  string.each_char.with_index { |c, i| string[i] = hash[c] if hash[c] }
end

def product_inject(array)
  array.inject { |acc, num| acc *= num }
end