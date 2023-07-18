# require_relative "employee"

class Manager < Employee
  attr_accessor :boss, :employees
  def initialize(name,title,boss, salary=10000)
    super
    @employees=[]

  end
  #if title = manager
  #if new created employee's boss is = to manager
  #if self.boss_name == manager.name
  #if equal shovel self into manager's employee list
  #we need a queue or empty array
  #shovel

  #manager is a special type of employee
  #use .
  # create a tree use bfs


end
