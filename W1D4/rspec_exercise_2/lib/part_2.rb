def palindrome?(string)
    reversed = ""
    i = string.length - 1

    while i >= 0
        reversed += string[i]
        i -= 1
    end

    string == reversed
end


def substrings(string)
    array = []
    
    (0...string.length).each do |idx_1|
        (idx_1...string.length).each do |idx_2|
            array << string[idx_1..idx_2]
            idx_2 += 1
        end
        idx_1 += 1
    end

    array
end


def palindrome_substrings(string)
    substrings(string).select do |word| 
        palindrome?(word) && word.length > 1
    end
end