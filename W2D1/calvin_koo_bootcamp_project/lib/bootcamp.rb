class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new {|h,k| h[k] = [] }
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def grades
        @grades
    end

    def hire(string)
        @teachers << string
    end

    def enroll(string)
        if @students.length < @student_capacity
            students << string
            return true
        elsif @students.length >= @student_capacity
            return false
        end
    end

    def enrolled?(string)
        @students.include?(string)
    end

    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(string, grade)
        if !@students.include?(string)
            return false
        end

        if @grades.has_key?(string)
            @grades.each do |k,v|
                v << grade
            end

        elsif !@grades.has_key?(string)
            @grades[string] << grade
        end

        return true
    end

    def num_grades(string)
        @grades[string].length
    end

    def average_grade(string)
        if @grades[string].length == 0 || !@students.include?(string)
            return nil
        end

        total = 0
        @grades[string].each do |ele|
            total += ele
        end

        total / @grades[string].length
    end

end

bootcamp = Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 6)

bootcamp.grades["Alice"] << 42
p bootcamp.grades
bootcamp.enroll("Alice")
bootcamp.enroll("Bob")
p bootcamp.students

bootcamp.add_grade("Alice", 100)
bootcamp.add_grade("Alice", 75)
bootcamp.add_grade("Bob", 87)

p bootcamp.grades
