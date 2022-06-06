def duos(string)
    hash = Hash.new(0)
    answer = 0

    string.each_char do |char|
        hash[char] += 1
    end

    hash.each_value do |v|
        if v > 1
            answer += 1
        end
    end

    answer
end

