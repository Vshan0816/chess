# require_relative 'manager'

class Employee

  attr_accessor :boss
  def initialize(name, title, boss=nil, salary=10000)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    assign_self
  end

  def assign_self
    @boss.employees << self if !@boss.nil?
  end

end


# Darren = Manager.new("Darren", 'TA Manager', nil, 78000)
# emp1 = Employee.new("Shawna", "ta", Darren, 12000)
# emp2 = Employee.new("David", "ta", Darren, 10000)



