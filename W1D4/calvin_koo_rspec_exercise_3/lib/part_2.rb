def element_count(array)
    hash = Hash.new(0)

    array.each { |ele| hash[ele] += 1}

    hash
end

def char_replace!(string, hash)
    string.each_char.with_index do |char, i|
        if hash.has_key?(char)
            string[i] = hash[char]
        else 
            string[i] = char
        end
    end

    string
end

def product_inject(array)
    array.inject { |acc,el| acc * el}
end