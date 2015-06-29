students_arrival_time = [0,-1,2,1]  
max_count = 2
postive_count = 0

class ClassRoom
  def initialize(students_arrival_time,max_count)
    @students_arrival_time = students_arrival_time
    @max_count = max_count
  end

  def arrival_count
    postive_count = 0
    @students_arrival_time.each do |time|
      if time >=0
        postive_count += 1
      end
    end
    postive_count
  end

  def is_class_canclled 
    postive_count = arrival_count
    if postive_count > @max_count
      "No"
    else
      "Yes"
    end
  end
end

output = ClassRoom.new(students_arrival_time, max_count).is_class_canclled
puts output
