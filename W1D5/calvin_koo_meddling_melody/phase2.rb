def conjunct_select(array, *prc)
    answer = []
    array.each do |ele|
        prc.each do |prcs|
            if prcs.call(ele)
                answer << ele
            end
        end
    end

    answer
end

#helper method for convert_pig_latin
def move_vowels_yay(word)
    vowels = "aeiouAEIOU"
    index = 0

    word.each_char.with_index do |char, i|
        if vowels.include?(char)
            index = i
            break
        end
    end

    first_half = word[0...index]

    new_word = word[index...word.length] + first_half + "ay"
end

def convert_pig_latin(sentence)
    array = sentence.split(" ")
    vowels = "aeiouAEIOU"
    answer = []

    array.each do |ele|
        if ele.length < 3
            answer << ele
        elsif vowels.include?(ele[0])
            answer << ele + "yay"
        elsif !vowels.include?(ele[0])
            answer << move_vowels_yay(ele)
        end
    end

    answer.join(" ")
end

#helper method for reverberate
def add_last_vowel(word)
    vowels = "aeiouAEIOU"
    index = 0

    word.each_char.with_index do |char, i|
        if vowels.include?(char)
            index = i
        end
    end

    last_half = word[index..word.length]

    answer = word + last_half
end

def reverberate(sentence)
    vowels = "aeiouAEIOU"
    array = sentence.split(" ")
    answer = []

    array.each do |ele|
        if ele.length < 3
            answer << ele
        elsif vowels.include?(ele[-1])
            answer << ele + ele
        elsif !vowels.include?(ele[-1])
            answer << add_last_vowel(ele)
        end
    end

    answer.join(" ")
end

def disjunct_select(array, *prcs)
    answer = []

    array.each do |ele|
        prcs.each do |prc|
            if prc.call(ele)
                answer << ele
                break
            end
        end
    end

    answer
end

#helper method for alternating_vowel
def remove_first_vowel(word)
    vowels = "aeiouAEIOU"
    index = 0

    word.each_char.with_index do |char, i|
        if vowels.include?(char)
            index = i
            break
        end 
    end

    last_half_i = index + 1

    answer = word[0...index] + word[last_half_i..word.length]
end

#helper method for alternating_vowel
def remove_last_vowel(word)
    vowels = "aeiouAEIOU"
    index = 0

    word.each_char.with_index do |char, i|
        if vowels.include?(char)
            index = i
        end 
    end

    last_half_i = index + 1

    answer = word[0...index] + word[last_half_i..word.length]
end

def alternating_vowel(sentence)
    array = sentence.split(" ")
    answer = []

    array.each_with_index do |ele, i|
        if i.even?
            answer << remove_first_vowel(ele)
        else
            answer << remove_last_vowel(ele)
        end
    end

    answer.join(" ")
end

#helper method for silly_talk
def follow_by_b(word)
    vowels = "aeiouAEIOU"
    answer = ""

    word.each_char do |char|
        if vowels.include?(char)
            answer += char + "b" + char
        else
            answer += char
        end
    end

    answer
end

def silly_talk(sentence)
    vowels = "aeiouAEIOU"
    words = sentence.split(" ")
    answer = []

    words.each do |ele|
        if vowels.include?(ele[-1])
            answer << ele + ele[-1]
        else
            answer << follow_by_b(ele)
        end
    end

    answer.join(" ")
end

def compress(string)
    answer = ""
    pointer_1 = 0
    pointer_2 = 0

    while pointer_1 < string.length
        char_1 = string[pointer_1]
        char_2 = string[pointer_2]
        count = 0
        while char_1 == char_2
            count += 1
            pointer_2 += 1
            char_2 = string[pointer_2]
        end

        if count > 1
            answer += char_1 + count.to_s
        else
            answer += char_1
        end

        pointer_1 = pointer_2
        pointer_2 = pointer_1
        count = 0
    end

    answer
    
end
