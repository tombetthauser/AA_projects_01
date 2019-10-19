def element_count(arr)
    hash = Hash.new(0)
    arr.each { |ele| hash[ele] += 1 }
    hash
end

def char_replace!(string, hash)
    string.each_char.with_index do |char, idx|
        string[idx] = hash[char] if hash[char]
    end
end

def product_inject(arr)
    arr.inject { |acc, num| acc *= num }
end