def palindrome?(str)
    front = 0
    back = str.length - 1
    while(front < back) 
        return false if str[front] != str[back]
        front += 1
        back -= 1
    end
    true
end

def substrings(str)
    substr = Set.new
    starting_idx = 0
    while starting_idx < str.length
        stopping_idx = starting_idx
        while stopping_idx < str.length
            substr.add(str[starting_idx..stopping_idx])
            stopping_idx += 1
        end
        starting_idx += 1
    end
    substr.to_a
end

def palindrome_substrings(str)
    substr = substrings(str)
    substr.select {|sub| sub.length > 1 && palindrome?(sub)}
end