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
    

# Initialize a class that gets student grades
    def initialize(fname, lname)   
        @firstname = fname
        @lastname = lname
        @grades = []    # Array.new     # Creates a new array that will later add all grade points then convert to a final class grade.
    end

# NOTE: attr_accessor is a shortcut for defining methods. It uses both reader and writer methods together

attr_accessor :firstname, :lastname, :class_grade, :lgrade


# Add all grades before calculating the Grade Average; round up to the nearest whole number

   def sumGrade(point)
   
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
        elsif @class_grade >= 80    # 'elseif' statement is no longer valid. use 'elsif' to replace it
            @lgrade = 'B'
        elsif @class_grade >= 70
            @lgrade = 'C'
        elsif @class_grade >= 60
            @lgrade = 'D'
        else
            @lgrade = 'F'
    end

end

# Create some sample objects
a = Student.new("Kevin", "Green")
b = Student.new("Jane", "Tolbert")
c = Student.new("Michael", "Lagoon")

# Testing Object 'a, b, and c'
a.sumGrade(85)
a.sumGrade(93)
a.sumGrade(61)

b.sumGrade(70)
b.sumGrade(98)
b.sumGrade(81)

c.sumGrade(80)
c.sumGrade(50)
c.sumGrade(72)

# NOTE: Figure out to create multi-dimensional array and iterate for each student info

studentList = [a, b, c]

studentList.each do |m|
 puts "Student name: " + m.firstname + " " + m.lastname + " " +  " => Class Grade:  " + m.class_grade.to_s + " " + m.lgrade
end

end
# puts "Student name: " + a.firstname + " " + a.lastname + " => Class Grade:  " + a.class_grade.to_s + " " + a.lgrade
# Output: Student name: Kevin Green => Class Grade: 79 C
# Output: Student name: Jane Tolbert => Class Grade: 83 B
# Output: Student name: Michael Lagoon => Class Grade: 67 D