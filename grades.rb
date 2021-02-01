=begin
 Details: Create a Ruby project that calculates Student final letter grades on each class they take.
 Create CSV files that shows student names, grades, and classes they take
 Use CSV files to output student grades in a report
 Optional: Calculate the student's weighted GPA; Indicate the student is in the Dean or President's List
 Optional: Calculate the student class rank on all students
 Optional: Send a detailed class report to individual student via email (attachment or link)

# NOTE: Create a sample object on how to get student information and calculate their final grade on one class


=end


class Student
    @@class_grade = 0
# Initialize a class that gets student grades
    def initialize(fname, lname)   #initialize(fname, lname, grades, class_grade, lgrade)
        @firstname = fname
        @lastname = lname
        @grades = Array.new # Creates a new array that will later add all grade points then convert to a final class grade.
    end

# Sample Objects works if I defined methods below. Is there a way to simplify this?

    def firstname
        @firstname
    end

    def firstname=(fname)
        @firstname = fname
    end

    def lastname
        @lastname
    end

    def lastname=(lname)
        @lastname = lname
    end

    def class_grade
        @class_grade
    end

    def class_grade=(class_grade)
        @class_grade = class_grade
    end

    def lgrade
        @lgrade
    end

    def lgrade=(lgrade)
        @lgrade = lgrade
    end


# Add all grades before calculating the Grade Average; round up to the nearest whole number

   def sumGrade(point)
    # point = grades.round(point) # Rounds up to the nearest whole number
     if point.is_a?(Integer)
        @grades.push(point)
        finalGrade
     end

   end

# Calculate the final grade for one class
    def finalGrade
        report = 0

            if @grades.size > 0
                @grades.each { |f| report += f}
                @class_grade = report / @grades.size
            else
                @class_grade = 0
            end

            # Define the final letter grade
            setFinalgrade
        end

# Calculate the total grade point average (GPA) for all classes (optional)

# Set the final letter grade specified by the final calculated grade
    def setFinalgrade
        if @class_grade >= 90
            @lgrade = 'A'
        elsif @class_grade >= 80 # 'elseif' statement is no longer valid. use 'elsif' to replace it
            @lgrade = 'B'
        elsif @class_grade >= 70
            @lgrade = 'C'
        elsif @class_grade >= 60
            @lgrade = 'D'
        else
            @lgrade = 'F'
    end
end
end

# Create some sample objects
a = Student.new("Kevin", "Green")
b = Student.new("Jane", "Tolbert")
c = Student.new("Michael", "Lagoon")

# Testing Object 'a'
a.sumGrade(85)
a.sumGrade(93)
a.sumGrade(63)

puts "Student name: " + a.firstname + " " + a.lastname + " => Class Grade:  " + a.class_grade.to_s + " " + a.lgrade
# Output: Student name: Kevin Green => Class Grade: 90 A