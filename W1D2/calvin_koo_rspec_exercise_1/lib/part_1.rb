def average(num_1, num_2)
    sum = num_1 + num_2
    average = 0
    
    if sum % 2 == 0
        average = sum / 2
    else
        average = sum.to_f / 2.0
    end
    
    average
end

def average_array(arr)
    sum = arr.sum

    if sum % 2 == 0
        average = sum / arr.length
    else
        average = sum.to_f / arr.length.to_f
    end

    average
end


def repeat(string,num)
    answer = ""

    num.times do
        answer += string
    end

    answer
end

def yell(string)
    string.upcase + "!"
end

def alternating_case(string)
    arr = string.split(" ")
    answer = []

    arr.each_with_index do |ele, i|
        if i.even?
            answer << ele.upcase
        else
            answer << ele.downcase
        end
    end

    answer.join(" ")
end