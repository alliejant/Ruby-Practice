# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort
def bubble_sort(arr)
    sorted = false
    last_idx = arr.length-2
    while(!sorted)
        sorted = true
        for idx in 0..last_idx do
            if arr[idx] > arr[idx + 1]
                sorted = false
                arr[idx + 1], arr[idx] = arr[idx], arr[idx + 1]
            end
        end
        last_idx -= 1
    end
    arr
end
    

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]