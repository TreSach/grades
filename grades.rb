=begin
 Details: Create a Ruby project that calculates Student final letter grades on each class they take.
 Create CSV files that shows student names, grades, and classes they take
 Use CSV files to output student grades in a report
 Optional: Calculate the student's weighted GPA; Indicate the student is in the Dean or President's List
 Optional: Calculate the student class rank on all students
 Optional: Send a detailed class report to individual student via email (attachment or link)

# NOTE: Create a sample object on how to get student information and calculate their final grade on one class
class Student

=end

# Initialize a class that gets student grades
    def initialize(fname, lname, grades)
        @firstname = fname
        @lastname = lname
        @grades = grades
    end

# Add all grades before calculating the Grade Average; round up to the nearest whole number
    def sumGrade(point)
        @grades.round(point)
    end

# Calculate the total grade average for one class

# Calculate the total grade point average (GPA) for all classes (optional)

# Set the final letter grade specified by the final calculated grade
    def setFinalgrade
        if grades >= 90
            grades = 'A'
        elseif grades >= 80
            grades = 'B'
        elseif grades >= 70
            grades = 'C'
        elseif grades >= 60
            grades = 'D'
        else
            grades = 'F'
    end
end

# Create some sample objects
a.Student.new("Kevin", "Green")
b.Student.new("Jane", "Tolbert")
c.Student.new("Michael", "Lagoon")