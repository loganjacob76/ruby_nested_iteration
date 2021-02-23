class School
  attr_reader :name, :houses, :courses

  def initialize(name, houses)
    @name = name
    @houses = houses
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def sort(student)
    student.house = @houses.sample
  end

  def sort_students
    @courses.each do |course|
      course.students.each do |student|
        sort(student)
      end
    end
  end

  def student_names
    all_names = @courses.map do |course|
      course.students.map do |student|
        student.name
      end
    end
    all_names.flatten.uniq
  end

  def students_by_house
    students_houses = {
      slytherin: [],
      gryffindor: [],
      ravenclaw: [],
      hufflepuff: []
    }

    all_students.each do |student|
      students_houses[student.house] << student
    end

    students_houses
  end

  def all_students
    students = @courses.map do |course|
      course.students
    end

    students.flatten.uniq
  end
end
