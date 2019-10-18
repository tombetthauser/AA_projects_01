require "byebug"

def zip(*arrays)
  new_arr = []

  arrays.first.length.times do |idx|
    new_sub = []
    arrays.each { |old_sub| new_sub << old_sub[idx] }
    new_arr << new_sub
  end

  new_arr
end

def prizz_proc(arr, prc_1, prc_2)
  arr.select { |ele| prc_1.call(ele) ^ prc_2.call(ele) }
end

def zany_zip(*arrays)
  top_length = arrays.inject(0) { |acc, sub| sub.length > acc ? sub.length : acc }
  zip_arr = Array.new(top_length) { Array.new(arrays.length) }

  arrays.each_with_index do |sub_arr, idx_1|
    sub_arr.each_with_index do |ele, idx_2|
      zip_arr[idx_2][idx_1] = ele
    end
  end

  zip_arr
end

def maximum(arr, &prc)
  
  arr.inject(prc.call(arr.first)) do |acc, ele|
    # debugger
    result = prc.call(ele)

    acc.is_a?(String) ? length_acc = acc.length : length_acc = acc
    result.is_a?(String) ? length_result = result.length : length_result = result

    if length_result >= length_acc
      ele
    else
      acc
    end

  end
end

## cutoff at 9:30p 10/17/19

