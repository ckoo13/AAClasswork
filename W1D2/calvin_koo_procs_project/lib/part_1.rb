def my_map(array, &prc)
    answer = []
    
    array.each do |ele|
        answer << prc.call(ele)
    end

    answer
end

def my_select(array, &prc)
    answer = []

    array.each do |ele|
        if prc.call(ele) == true
            answer << ele
        end
    end

    answer
end

def my_count(array, &prc)
    count = 0

    array.each do |ele|
        if prc.call(ele) == true
            count += 1
        end
    end

    count
end

def my_any?(array, &prc)
    answer = false

    array.each do |ele|
        if prc.call(ele) == true
            answer = true
        end
    end

    answer
end

def my_all?(array, &prc)
    answer = true

    array.each do |ele|
        if prc.call(ele) == false
            answer = false
        end
    end

    answer
end

def my_none?(array, &prc)
    answer = true

    array.each do |ele|
        if prc.call(ele) == true
            answer = false
        end
    end

    answer
end