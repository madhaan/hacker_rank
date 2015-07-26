class Student
  attr_reader :name, :usn, :city
  def initialize(name,usn,city)
    @name = name
    @usn = usn
    @city = city
  end
end

class StudentDatabase
  def initialize()
    @data_base = []
  end

  def add_data(data)
    @data_base << data
  end

  def usn(value)
    @data_base.each do |student|
      if student.usn == value
        return student
      end
    end
  end

  def city(city_name)
    students = []
    @data_base.each do |student|
      if student.city == city_name
        students << student
      end
    end
    students
  end

  def student_name
    names = []
    @data_base.each do |student|
     names << student.name
   end
     names
  end
end


data_base = StudentDatabase.new
shiva = Student.new("shiva",21,"banglore")
manja = Student.new("manja",11,"hyderabad")
santhu = Student.new("santhu",25,"hyderabad")
kiran = Student.new("kiran",23,"pune")


data_base.add_data(shiva)
data_base.add_data(manja)
data_base.add_data(santhu)
data_base.add_data(kiran)
puts "#{data_base.student_name}"
puts data_base.usn(25).name
 city = data_base.city("hyderabad").map{|e|e.name}
 puts "students fr same city#{city}"
