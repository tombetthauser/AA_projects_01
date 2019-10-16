def hipsterfy(word)
    vowels = "aeiou"
    idx = nil
    i = 0

    while i < word.length
        idx = i if vowels.include?(word[i])
        i += 1
    end

    idx.nil? ? word : (word[0...idx] + word[(idx+1)..-1])
end

def vowel_counts(str)
    hash = Hash.new(0)
    vowels = "aeiou"

    str.each_char { |c| hash[c.downcase] += 1 if vowels.include?(c.downcase)}
    hash
end

def caesar_cipher(message, n)
    alpha = ("a".."z").to_a
    max_idx = alpha.length
    new_message = ""

    message.each_char do |char|
        if alpha.include?(char)
            old_idx = alpha.index(char)
            new_idx = (old_idx + n) % max_idx
            new_message += alpha[new_idx]
        else
            new_message += char
        end
    end

    new_message
end