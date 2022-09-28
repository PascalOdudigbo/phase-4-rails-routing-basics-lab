class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all.order(grade: :desc)
        render json: students
    end

    def highest_grade
        highest = Student.all.order(grade: :desc)
        render json: highest[0]
    end
        
end
