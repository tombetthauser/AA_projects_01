def average(num1, num2)
    (num1 + num2) / 2.0
end

def average_array(arr)
    arr.sum / arr.length.to_f
end

def repeat(str, num)
    new_str = ""
    num.times { new_str += str }
    new_str
end

def yell(str)
    new_str = str.upcase + "!"
    new_str
end

def alternating_case(str)
    arr = []
    str.split(" ").each_with_index do |word, idx|
        idx.even? ? arr << word.upcase : arr << word.downcase
    end
    arr.join(" ")
end