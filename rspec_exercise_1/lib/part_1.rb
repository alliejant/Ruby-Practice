def average(num_1, num_2)
    (num_1 + num_2.to_f)/2
end

def average_array(array)
    array.sum.to_f/array.length
end

def repeat(str, num)
    str * num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    str.split.map.with_index { |word, idx| idx.even? ? word.upcase : word.downcase }.join(" ")
end
    
