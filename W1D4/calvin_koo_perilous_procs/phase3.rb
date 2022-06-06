def selected_map!(array, prc_1, prc_2)
    array.map.with_index do |ele,i|
        if prc_1.call(ele)
            array[i] = prc_2.call(ele)
        end
    end

    nil
end

def chain_map(val, array)
    answer = val

    array.each do |ele|
        answer = ele.call(answer)
    end

    answer
end

require "byebug"
def proc_suffix(sentence, hash)
    words = sentence.split(" ")

    words.each_with_index do |ele, i|
        hash.each do |k,v|
            if k.call(ele)
                words[i] += v
            end
        end
    end

    words.join(" ")
end

def proctition_platinum(array, *prc)
    answer = Hash.new()

    prc.each_with_index do |ele, i|
        answer[i + 1] = []
    end

    array.each_with_index do |ele, arr_i|
        prc.each_with_index do |proc, prc_i|
            if proc.call(ele)
                answer[prc_i + 1] << ele
                break
            end
        end
    end

    answer
end

def procipher(sentence, hash)
    answer = sentence.split(" ")

    answer.each_with_index do |ele, i|
        hash.each do |k,v|
            if k.call(ele)
                answer[i] = v.call(ele)
            end
        end
    end

    answer.join(" ")
end

def picky_procipher(sentence, hash)
    answer = sentence.split(" ")

    answer.each_with_index do |ele, i|
        og_word = ele

        hash.each do |k,v|
            if k.call(og_word)
                answer[i] = v.call(ele)
                break
            end
        end
    end

    answer.join(" ")
end