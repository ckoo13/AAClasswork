def proper_factors(num)
    answer = []

    (1...num).each do |n|
        if num % n == 0
            answer << n
        end
    end

    answer
end

def aliquot_sum(num)
    factors = proper_factors(num)

    factors.sum
end

def perfect_number?(num)
    if num == aliquot_sum(num)
        return true
    end

    false
end

def ideal_numbers(n)
    count = 0
    test_number = 1
    answer = []

    while count < n
        if perfect_number?(test_number)
            answer << test_number
            count += 1
        end

        test_number += 1
    end

    answer
end