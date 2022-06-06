# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.

def union(*arrays)
    temp = [arrays]
    answer = []

    temp.each do |ele|
        ele.each do |ele1|
            answer.push(*ele1)
        end
    end

    return answer
end

p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
