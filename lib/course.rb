class Course
  attr_reader :name, :professor, :students

  def initialize(name, professor)
    @name = name
    @professor = professor
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def houses_represented
    houses = @students.map do |student|
      student.house
    end
    houses.uniq
  end
end
