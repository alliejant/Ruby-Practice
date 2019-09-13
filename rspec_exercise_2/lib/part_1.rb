def partition(arr, num)
    under = arr.select {|n| n < num}
    over = arr.select { |n| n >= num}
    [under, over]
end
    
def merge(hash_1, hash_2)
    merged = {}
    hash_1.each_pair {|key, val| merged[key] = val}
    hash_2.each_pair {|key, val| merged[key] = val}
    merged
end

def censor(sentence, swear_words)
    sentence.split.map {|word| swear_words.include?(word.downcase) ? word.gsub(/[AEIOUaeiou]/, "*") : word}.join(" ")
end

def power_of_two?(num)
    while num > 1
        num /= 2.0
    end
    num == 1
end