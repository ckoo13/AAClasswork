#helper method for anti_prime?
def count_divisors(num)
    count = 0

    (1..num).each do |x|
        if num % x == 0
            count += 1
        end
    end

    count
end


def anti_prime?(number)
    answer = true
    current_highest = count_divisors(number)

    (1..number).each do |num|
        if count_divisors(num) > current_highest
            answer = false
        end
    end

    answer


end

def matrix_addition(matrix_1, matrix_2)
    answer = []

    matrix_1.each do |ele|
        answer << []
    end
    matrix_1.each_with_index do |ele, i|
        ele.each_with_index do |ele1, i1|
            ele1 += matrix_2[i][i1]
            answer[i][i1] = ele1
        end
    end

    answer
end

#helper method for mutual factors
def find_divisors(number)
    answer = []
    (1..number).each do |num|
        if number % num == 0
            answer << num
        end
    end

    answer
end

def mutual_factors(*numbers)
    answer = []
    hash = Hash.new(0)
    final_divisors = []

    numbers.each do |ele|
        divisors = find_divisors(ele)

        divisors.each do |ele_1|
            hash[ele_1] += 1
        end
    end

    hash.each_key do |key|
        final_divisors << key
    end

    final_divisors.each do |ele|
        if numbers.all? { |num| num % ele == 0 }
            answer << ele
        end
    end

    answer
end

def tribonacci_number(n)
    if n == 1
        return 1
    elsif n == 2
        return 1
    elsif n == 3
        return 2
    end

    x = 1
    y = 1
    z = 2

    sequence = [x,y,z]

    pointer_1 = 0
    pointer_2 = 1
    pointer_3 = 2

    (4..n).each do |num|
        sequence << x + y + z
        pointer_1 += 1
        pointer_2 += 1
        pointer_3 += 1
        x = sequence[pointer_1]
        y = sequence[pointer_2]
        z = sequence[pointer_3]
    end

    sequence[n - 1]
end

p tribonacci_number(7)

