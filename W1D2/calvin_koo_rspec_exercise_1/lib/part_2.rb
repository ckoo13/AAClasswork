def hipsterfy(word)
    vowels = "aeiou"
    answer = word
    include_vowel = false
    idx = 0
    
    word.each_char.with_index do |char, i|
        if vowels.include?(char)
            idx = i
            include_vowel = true
        end
    end

    arr = word.split("")

    if !include_vowel
        return answer
    else
        arr.slice!(idx)
    end

    arr.join("")
end

def vowel_counts(string)
    hash = Hash.new(0)
    vowels = "aeiou"
    
    string.each_char do |ele|
        if vowels.include?(ele.downcase)
            hash[ele.downcase] += 1
        end
    end

    hash
end

def caesar_cipher(msg, num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    answer = ""

    msg.each_char.with_index do |char,i|
        if alphabet.include?(char)
            currentIndex = alphabet.index(char)
            newIndex = currentIndex + num
            newChar = alphabet[newIndex % alphabet.length]
            answer += newChar
        else
            answer += char
        end
    end

    answer
end