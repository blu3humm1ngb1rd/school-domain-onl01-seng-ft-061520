class School 
  attr_accessor :name, :roster
  
  def initialize(name)
    @name=name
    @roster = {}
  end 
  
  
   def add_student(name, grade)
     if roster.has_key?(grade)
       roster[grade] << name 
     else 
       roster[grade]=[name]
     end 
   end
   
   def grade
     roster.map {|grade, student| student.values}
   end 
   
   def sort 
     sorted_students = {}
     roster.each do |grade,name| 
       name.sort 
       sorted_students[grade]=name.sort 
     end 
     sorted_students
   end 
   
end 

