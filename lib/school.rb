require 'pry'

class School
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if not @roster.key?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort

    @roster.collect do |grade, students|
      students.sort!
    end
    @roster
  end

end
