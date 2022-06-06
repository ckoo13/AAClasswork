# Write a method, multi_dimensional_sum(array), that accepts a multidimensional array as an arg 
# and returns the sum of all numbers in the array.

def multi_dimensional_sum(array)
    answer = 0

    array.each do |ele|
        if ele.is_a?(Array)
            ele.each do |ele1|
                if ele1.is_a?(Array)
                    ele1.each do |ele2|
                        answer += ele2
                    end
                else
                    answer += ele1
                end
            end
        else
            answer += ele
        end
    end

    return answer
end

arr_1 = [
    [4, 3, 1],
    [8, 1],
    [2]
]

p multi_dimensional_sum(arr_1)    # => 19

arr_2 = [
    [ [3, 6], [7] ],
    [ [5, 2], 1 ]
]

p multi_dimensional_sum(arr_2)    # => 24
