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
<<<<<<< HEAD
    @roster.collect do |grade, students|
      students.sort!
    end
    @roster
=======
    @roster.each do |grade, students|
      binding.pry
    end
>>>>>>> cecdea41b64980d6c632b5bd628b5e9ba48c1a22
  end
  
end