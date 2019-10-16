def element_count(array)
    hash = Hash.new(0)

    array.each { |ele| hash[ele] += 1 }

    hash
end


def char_replace!(str, hash)
    str.each_char.with_index do |char, idx| 
        str[idx] = hash[char] if hash[char]
    end
end


def product_inject(arr)
    arr.inject { |acc, ele| acc *= ele }
end