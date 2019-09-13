# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

def largest_prime_factor(num)

    (1..num-2).each do |n|
        current = num - n
        if num % (current) == 0
            return current if prime?(current)
        end
    end

    num
end

def prime?(num)
    return false if num < 2

    (2...num).each do |n|
        return false if num % n == 0
    end 

    true
end

def unique_chars?(str)
    letter_counts = Set.new
    str.each_char {|lett| letter_counts.include?(lett) ? (return false) : letter_counts.add(lett) }
    true
end

def dupe_indices(arr)
    indices = Hash.new { |hash, key| hash[key] = [] }
    arr.each.with_index {|val, i| indices[val] << i}
    indices.delete_if {|key, val| val.length < 2}
    indices     
end

def ana_array(arr_1, arr_2)
    counts = Hash.new(0)
    arr_1.each { |val| counts[val] += 1 }
    arr_2.each { |val| counts[val] -= 1 }
    counts.all? {|key, val| val == 0}
end