# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime(num)

    if num < 2
        return false
    end

    (2...num).each do |x|
        return false if num % x == 0
    end

    true
end


def largest_prime_factor(num)
    answer = 0

    (2..num).each do |x|
        if num % x == 0 && prime(x)
            answer = x
        end
    end

    answer
end

def unique_chars?(string)
    hash = Hash.new(0)

    string.each_char do |char|
        hash[char] += 1
    end

    answer = true

    hash.each_value do |val|
        if val > 1
            answer = false
        end
    end

    answer
end

def dupe_indices(array)
    hash = Hash.new(0)
    hash1 = {}

    array.each do |ele|
        hash[ele] += 1
    end

    array.each do |ele|
        hash1[ele]= []
    end

    array.each_with_index do |ele, i|
        if hash[ele] > 1
            hash1[ele].push(i)
        end
    end

    hash.each_key do |key|
        if hash[key] <= 1
            hash1.delete(key)
        end
    end

    hash1

end

def ana_array(array1, array2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    answer = true

    array1.each do |ele|
        hash1[ele] += 1
    end

    array2.each do |ele|
        hash2[ele] += 1
    end

    if hash1.length != hash2.length
        answer = false
    end
    
    hash1.each_key do |key|
        if hash1[key] != hash2[key]
            answer = false
        end
    end

    answer
end

p ana_array(["cat", "dog", "cat"], ["dog", "cat", "mouse"])
