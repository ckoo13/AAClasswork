# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1,num_2)
    answer = true
    lowest_int = 0
    largest_int = 0

    if num_1 > num_2
        lowest_int = num_2
        largest_int = num_1
    
    else
        lowest_int = num_1
        largest_int = num_2
    end

    (2...lowest_int).each do |num|
       if  largest_int % num == 0 && lowest_int % num == 0
        answer = false
       end
    end

    return answer
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
