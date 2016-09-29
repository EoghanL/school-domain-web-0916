class School

  attr_reader :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    @roster.has_key?(grade) ? roster[grade] << student : roster[grade] = [student]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grades, student_names_arr|
      @roster[grades].sort!
    end
    @roster.sort.to_h
  end

end
