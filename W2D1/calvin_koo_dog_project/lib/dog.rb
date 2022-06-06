require "byebug"
class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(num)
        @age = num
    end

    def bark
        if self.age > 3
            @bark.upcase
        elsif self.age <= 3
            @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(string)
        temp_array = []
        @favorite_foods.each do |ele|
            temp_array << ele.downcase
        end

        temp_array.include?(string.downcase)
    end
end

dog_1 = Dog.new("Fido", "German Shepard", 5, "Bork!", ["Bacon", "Chicken"])
p dog_1.favorite_food?("bacon")
p dog_1.favorite_food?("ChIckEn")


