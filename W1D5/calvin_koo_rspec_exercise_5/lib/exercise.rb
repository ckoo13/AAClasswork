require "byebug"

def zip(*array)
    hash = Hash.new()

    array.each do |ele|
        ele.each_with_index do |ele1, i|
            hash[i] = []
        end
    end

    array.each do |ele|
        ele.each_with_index do |ele1,i|
            if hash.has_key?(i)
                hash[i] << ele1
            end
        end
    end

    answer = []

    hash.each do |k,v|
        answer << v
    end

    answer
end

def prizz_proc(array, prc_1, prc_2)
    answer = []
    
    array.each do |ele|
        if prc_1.call(ele) && prc_2.call(ele)
            answer = answer
        elsif prc_1.call(ele)
            answer << ele
        elsif prc_2.call(ele)
            answer << ele
        end
    end

    answer
end

#needed solution to solve / still a little confused with how map is operating here
def zany_zip(*arrays)
    length = arrays.map(&:length).max

    (0...length).map do |i|
        
        arrays.map do |array|
            debugger
            array[i]
        end
    end
end

array_1 = ['a', 'b', 'c']
array_2 = [1, 2, 3]
array_3 = [11, 13, 15, 17]
array_4 = ['v', 'w', 'x', 'y', 'z']

p zany_zip(array_1, array_2, array_3, array_4)

def maximum(array, &prc)
    answer = array[0]

    if array.length == 0
        return answer
    end

    array.each do |ele|
        temp_answer = prc.call(ele)

        if temp_answer > prc.call(answer) || temp_answer == prc.call(answer)
            answer = ele
        end
    end

    answer
end

def my_group_by(array, &prc)
    hash = Hash.new()

    array.each do |ele|
        key = prc.call(ele)
        hash[key] = []
    end

    hash.each do |k,v|
        array.each do |ele|
            if prc.call(ele) == k
                v << ele
            end 
        end
    end

    hash
end

def max_tie_breaker(array, prc, &prc_1)
    answer = array[0]

    if array.length == 0
        return nil
    end 

    array.each do |ele|
        temp_answer = prc_1.call(ele)
        temp_answer_alt = prc.call(ele)
    
        if temp_answer > prc_1.call(answer)
            answer = ele
        elsif temp_answer == prc_1.call(answer)
            if temp_answer_alt > prc.call(answer)
                answer = ele
            elsif temp_answer_alt == prc.call(answer)
                answer = answer
            end
        end
    end

    answer
end

#helper method for silly_syllables
def remove_vowels(word)
    vowels = "aeiou"

    array = word.split("")
    first_index = 0
    last_index = 0

    array.each_with_index do |ele, i|
        if vowels.include?(ele)
            first_index = i
            break
        end
    end

    array.each_with_index do |ele, i|
        if vowels.include?(ele)
            last_index = i
        end
    end

    answer = array[first_index..last_index]

    answer.join("")
end

#helper method for silly_syllables
def vowel_count(word)
    vowels = "aeiou"
    count = 0

    word.each_char do |char|
        if vowels.include?(char)
            count += 1
        end
    end

    count
end

def silly_syllables(sentence)
    array = sentence.split(" ")
    answer = []

    array.each do |ele|
        if vowel_count(ele) >= 2
            answer << remove_vowels(ele)
        else
            answer << ele
        end
    end

    answer.join(" ")

end 

p silly_syllables('properly and precisely written code')