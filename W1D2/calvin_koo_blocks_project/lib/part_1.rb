def select_even_nums(array)
    array.select(&:even?)
end

def reject_puppies(array)
    array.reject { |ele| ele["age"] <= 2}
end

def count_positive_subarrays(array)
    array.count { |ele| ele.sum > 0}
end

def aba_translate(word)
    vowels = "aeiou"
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

def aba_array(words)
    words.map {|ele| aba_translate(ele)}
end
