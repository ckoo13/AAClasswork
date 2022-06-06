def xnor_select(array, prc_1, prc_2)
    answer = []

    array.each do |ele|
        if prc_1.call(ele) && prc_2.call(ele)
            answer << ele
        elsif !prc_1.call(ele) && !prc_2.call(ele)
            answer << ele
        end
    end

    answer
end