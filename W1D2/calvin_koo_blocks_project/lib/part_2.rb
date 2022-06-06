
def all_words_capitalized?(array)
    array.all? { |ele| ele.capitalize == ele}
end

def no_valid_url?(array)
    array.none? do |ele|
        ele.end_with?((".com") || ele.end_with?(".net") || ele.end_with?(".io") || ele.end_with?(".org"))
    end
end

def any_passing_students?(array)
    array.any? do |ele|
        (ele[:grades].sum / ele[:grades].length) >= 75
    end
end
