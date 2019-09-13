def hipsterfy(word)
    idx_last_vowel = word.rindex(/[aeiou]/)
    word[idx_last_vowel] = "" if idx_last_vowel
    word
end

def vowel_counts(str)
    string_counts = {}
    str.downcase.each_char {|lett| string_counts[lett] ? string_counts[lett] += 1 : string_counts[lett] = 1}
    string_counts
end

def caesar_cipher(str, num)
    temp = str.codepoints.map do |codepoint|
        # handle capital letters
        if codepoint >= 65 && codepoint <= 90
            codepoint += num % 26
            if codepoint > 90
                codepoint -= 26
            end  
        # handle lowercase letters
        elsif codepoint >= 97 && codepoint <= 122
            codepoint += num % 26
            if codepoint > 122
                codepoint -= 26
            end
        end
        codepoint
    end.pack("U*").encode('utf-8')
end