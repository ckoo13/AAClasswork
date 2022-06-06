# Monkey-Patch Ruby's existing Array class to add your own custom methods
require "byebug"
class Array
    def span
        if self.length == 0
            return nil
        end

        max = self.max
        min = self.min

        max - min
    end

    def average
        if self.length == 0
            return nil
        end

        total = 0

        self.each do |ele|
            total += ele
        end

        total.to_f / self.length.to_f
    end

    def median
        if self.length == 0
            return nil
        end

        temp_array = self.sort
        answer = 0
        middle_i = temp_array.length / 2
        even_middle_i = (temp_array.length / 2) - 1
        even_middle = []

        if temp_array.length.odd?
            answer = temp_array[middle_i]
        elsif temp_array.length.even?
            even_middle = temp_array[even_middle_i..middle_i]
            even_middle.each do |ele|
                answer += ele
            end
            answer = answer.to_f
            answer = answer / 2
        end

        answer
    end

    def counts
        hash = Hash.new(0)

        self.each do |ele|
            hash[ele] += 1
        end

        hash
    end

    def my_count(val)
        hash = Hash.new(0)

        self.each do |ele|
            hash[ele] += 1
        end

        if !hash.has_key?(val)
            return 0
        elsif hash.has_key?(val)
            return hash[val]
        end
    end

    def my_index(val)
        if !self.include?(val)
            return nil
        end

        idx = 0

        self.each_with_index do |ele,i|
            if ele == val
                idx = i
                break
            end
        end

        idx
    end

    def my_uniq
        answer = []

        self.each do |ele|
            if !answer.include?(ele)
                answer << ele
            end
        end 

        answer
    end

    def my_transpose
        length = self.map(&:length).max
        answer = []

        (0...length).each do
            answer << []
        end

        answer.each_with_index do |ele,idx|
            i = 0
            (0...length).each do
                ele << self[i][idx]
                i += 1
            end
        end

        answer
    end
end