def select_even_nums(arr)
    arr.select(&:even?)
end

def reject_puppies(arr)
    arr.reject {|dog| dog["age"] <= 2}
end

def count_positive_subarrays(arr)
    arr.count {|arr| arr.sum > 0}
end

def aba_translate(str)
    str.gsub(/([aeiou])/) { |m| "#{$1}b#{$1}" }
end

def aba_array(arr)
    arr.map {|word| aba_translate(word)}
end