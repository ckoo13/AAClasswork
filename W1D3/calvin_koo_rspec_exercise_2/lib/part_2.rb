def palindrome?(string)
    answer = false
    forwards = ""
    backwards = ""

    string.each_char { |char| forwards += char}
    
    i = string.length - 1
    
    while i >= 0
        backwards += string[i]
        i -= 1
    end

    if forwards == backwards
        answer = true
    end

    answer
end

def substrings(string)
    answer = []
    pointer_1 = 0 
    while pointer_1 < string.length
        pointer_2 = pointer_1
        while pointer_2 < string.length
            temp = string[pointer_1]
            temp = string[pointer_1..pointer_2]
            answer << temp
            pointer_2 += 1
        end

        pointer_1 += 1
    end

    answer
end

def palindrome_substrings(string)
    substrings = substrings(string)

    substrings.select { |ele| palindrome?(ele) && ele.length > 1}
end
