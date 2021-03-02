class School
    attr_accessor :roster, :student, :grade_level, :name

    def initialize(school_name, roster = {})
        @school = school_name
        @roster = roster
    end

    def add_student(student, grade_level) 
        
        @roster[grade_level] ||= []
        @roster[grade_level]<<student
             
    end

    def grade(grade_level)
        @roster[grade_level]
    end

    def sort

        sorted_students = {}
    #sort only student array alphabetically
        @roster.each do | grade, students |
            sorted_students[grade] = students.sort
        end
        sorted_students

    end

end


