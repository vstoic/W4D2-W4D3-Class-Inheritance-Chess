require_relative "./employee.rb"
class Manager < Employee
    attr_reader :employees
    attr_accessor :list_employees
    def initialize(employee_name, title, salary, boss= nil)
        super(employee_name, title, salary, boss)
        @list_employees = []
    end

    
    
    # def list_employee
    #     @list_employee << employee_name
    # end 


    # def total_salary
    #     p @employees
    # end
end

ned = Manager.new("Ned", "Founder", 0, nil)
darren = Manager.new("Darren", "TA Manager", 0, ned)
david = Employee.new("David", "TA", 10000, darren)
shawna = Employee.new("Shawna", "TA", 12000, darren)

ned.bonus(5) # => 500_000
darren.bonus(4) # => 88_000
david.bonus(3) # => 30_000

