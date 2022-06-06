#return a count of distinct pairs that have a sum of 0
require "byebug"
def strange_sums(array)
    count = 0

    
    array.each_with_index do |num1, i|
        pointer = i + 1
        while pointer < array.length
            if num1 + array[pointer] == 0
                count += 1
            end

            pointer += 1
        end
    end

    count
end

def pair_product(array, product)
    answer = false
    
    array.each_with_index do |num1, i|
        pointer = i + 1
        while pointer < array.length
            if num1 * array[pointer] == product
                answer = true
            end

            pointer += 1
        end
    end

    answer

end

def rampant_repeats(string, hash)
    answer = ""
    
    string.each_char do |char|
        if hash.has_key?(char)
            insert_char = char * hash[char]
            answer += insert_char
        else
            answer += char
        end
    end

    answer
end

def perfect_square?(number)
    answer = false

    if number == 1
        return true
    end

    i = 1

    (i...number).each do |num|
        if num * num == number
            answer = true
        end
    end

    answer
end