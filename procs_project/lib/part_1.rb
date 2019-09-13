def my_map(arr, &prc)
    result = []
    arr.each {|e| result << prc.call(e)}
    result
end

def my_select(arr, &prc)
    result = []
    arr.each {|e| result << e if prc.call(e) == true}
    result
end

def my_count(arr, &prc)
    count = 0
    arr.each {|e| count += 1 if prc.call(e) == true}
    count
end

def my_any?(arr, &prc)
    arr.each {|e| return true if prc.call(e) == true}
    false
end

def my_all?(arr, &prc)
    arr.each {|e| return false if prc.call(e) != true}
    true
end

def my_none?(arr, &prc)
    arr.each {|e| return false if prc.call(e) == true}
    true
end