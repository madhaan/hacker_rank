class Day
  attr_reader :name, :index
  def initialize(name, index)
    @name = name
    @index = index
  end
  def add_more_days
    puts "adding days"
  end
end
class Week
  def initialize()
    @days = []
  end
  def add_day(day)
    @days << day
  end
  def get_day(index)
    @days.each do |day|
      if day.index == index
        return day
      end
    end  
  end
end
week = Week.new
mon = Day.new("mon", 1)
tue = Day.new("tue", 2)
wed = Day.new("wed",3)
thur = Day.new("thur",4)
fri = Day.new("fri",5)
sat = Day.new("sat",6)
sun = Day.new("sun",7)
week.add_day(mon)
week.add_day(tue)
week.add_day(wed)
week.add_day(thur)
week.add_day(fri)
week.add_day(sat)
week.add_day(sun)

puts week.get_day(7).name

