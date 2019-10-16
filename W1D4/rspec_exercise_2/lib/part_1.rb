def partition(arr, n)
    left, right = [], []
    arr.each { |el| el < n ? left << el : right << el }
    [left, right]
end


def merge(hash_1, hash_2)
    hash_3 = {}
    hash_1.each { |k,v| hash_3[k] = v }
    hash_2.each { |k,v| hash_3[k] = v }
    hash_3
end


def censor(sentence, array)
    censored = []

    sentence.split(" ").each do |word|
        if array.include?(word.downcase)
            censored << star(word)
        else
            censored << word
        end
    end

    censored.join(" ")
end


def star(word)
    vowels = "aeiou"
    starred = ""
    word.each_char do |char| 
        if vowels.include?(char.downcase)
            starred += "*"
        else
            starred += char
        end
    end
    starred
end


def power_of_two?(num)
    if num == 2 || num == 1
        return true
    elsif num < 2
        return false
    end
    
    power_of_two?(num / 2.0)
end