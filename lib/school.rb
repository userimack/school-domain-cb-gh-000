# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    #if roster.keys().include?(grade)
    #  roster[grade] << name
    #else
    #  roster[grade] = [name]
    #end

    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_roster = {}
    roster.each do |grade, name|
      new_roster[grade] = name.sort
    end
    new_roster
  end
end