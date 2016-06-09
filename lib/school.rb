require 'pry'

# code here!
class School

def initialize(school_name)
  @roster = {}
end

def roster
  @roster
end

def add_student(name, grade)
  @roster[grade] ||= []
  @roster[grade] << name 
end

def grade(grade)
  @roster[grade]
end

def sort
  roster.each_with_object({}) do |(grade, array), hash|  
    hash[grade] = array.sort 
  end
end

end
