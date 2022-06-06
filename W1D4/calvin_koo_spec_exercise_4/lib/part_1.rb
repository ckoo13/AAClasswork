def my_reject(arr, &prc)
    arr.select { |ele| !prc.call(ele)}
end

def my_one?(array, &prc)
    count = 0

    array.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end

    if count > 1 || count < 1
        return false
    end

    true
end


def hash_select(hash, &prc)
    answer = Hash.new()

    hash.each do |k,v|
        if prc.call(k,v)
            answer[k] = v
        end
    end

    answer
end

def xor_select(array, prc_1, prc_2)
    answer = []

    array.each do |ele|
        if prc_1.call(ele) && prc_2.call(ele)
            answer = answer
        elsif prc_1.call(ele)
            answer << ele
        elsif prc_2.call(ele)
            answer << ele
        end
    end

    answer
        
end
even = Proc.new { |n| n.even? }
positive = Proc.new { |n| n > 0 }
p xor_select([2, 5, 3, 7, 6, -8, -1], even, positive)

def proc_count(val, array)
    count = 0

    array.each do |ele|
        if ele.call(val)
            count += 1
        end
    end

    count
end
