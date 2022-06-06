def partition(array, num)
    answer = []
    temp_1 = []
    temp_2 = []

    array.each do |ele|
        if ele < num
            temp_1 << ele
        else
            temp_2 << ele
        end
    end

    answer << temp_1
    answer << temp_2

    answer
end

def merge(hash_1, hash_2)
    answer = Hash.new(0)

    hash_1.each do |key,v|
        answer[key] = v
    end

    hash_2.each do |key,v|
        answer[key] = v
    end

    answer
end

def censor(sentence, array)
    arr_sentence = sentence.split(" ")
    answer = []

    arr_sentence.each do |ele|
        if array.include?(ele.downcase || ele.upcase)
            answer << replace_vowel(ele)
        else
            answer << ele
        end
    end

    answer.join(" ")
end

#helper method for censor
def replace_vowel(word)
    vowels = "aeiouAEIOU"
    new_word = ""

    word.each_char do |char|
        if vowels.include?(char)
            new_word += "*"
        else
            new_word += char
        end
    end

    new_word
end

def power_of_two?(num)
    answer = true
    temp = num

    while temp > 1
        
        if temp % 2 != 0
            answer = false
        end

        temp = temp / 2
    end

    answer

end

p power_of_two?(16)