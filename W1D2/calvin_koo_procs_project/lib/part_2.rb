def reverser(string, &prc)
    reverse = string.reverse!
    answer = ""

    answer = prc.call(reverse)

    answer
end

def word_changer(string, &prc)
    arr = string.split(" ")
    answer = []

    arr.each do |ele|
        answer << prc.call(ele)
    end

    answer.join(" ")
end

def greater_proc_value(number, prc1, prc2)
    num1 = prc1.call(number)
    num2 = prc2.call(number)
    answer = 0

    if num1 > num2
        answer = num1
    else
        answer = num2
    end

    answer
end

def and_selector(array, prc1, prc2)
    answer = []

    array.each do |ele|
        if prc1.call(ele) == true && prc2.call(ele) == true
            answer << ele
        end
    end

    answer
end

def alternating_mapper(array, prc1, prc2)
    answer = []

    array.each_with_index do |ele, i|
        if i.even?
            answer << prc1.call(ele)
        else
            answer << prc2.call(ele)
        end
    end

    answer
end