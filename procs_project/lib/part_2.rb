def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(str, &prc)
    str.split().map(&prc).join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
    [prc_1.call(num), prc_2.call(num)].max
end

def and_selector(arr, prc_1, prc_2)
    arr.select {|e| prc_1.call(e) == true && prc_2.call(e) == true}
end

def alternating_mapper(arr, prc_1, prc_2)
    arr.map.with_index {|e, i| i.even? ? prc_1.call(e) : prc_2.call(e)}
end

