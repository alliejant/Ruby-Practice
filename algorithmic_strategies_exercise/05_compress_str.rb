# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
    new_str = ""
    num_times = 1

    for idx in 1..str.length do 
        if str[idx] == str[idx-1]
            num_times += 1
        else
            num_times > 1 ? new_str += num_times.to_s + str[idx-1] : new_str += str[idx-1]
            num_times = 1
        end
    end

    new_str
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
