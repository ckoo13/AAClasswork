def some?(array, &prc)
    array.each do |ele|
        if prc.call(ele)
            return true
        end
    end

    false
end

def exactly?(array, n, &prc)
    count = 0

    array.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end

    if count == n
        return true
    end

    false
end

def filter_out(array, &prc)
    answer = []

    array.each do |ele|
        if !prc.call(ele)
            answer << ele
        end
    end

    answer
end

def at_least?(array, n, &prc)
    count = 0

    array.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end

    if count >= n
        return true
    end

    false
end

def every?(array, &prc)
    array.each do |ele|
        if !prc.call(ele)
            return false
        end
    end

    true
end

def at_most?(array, n, &prc)
    count = 0

    array.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end

    if count <= n
        return true
    end

    false
end