class Employee 
    attr_accessor :employee_name, :title, :salary, :boss
    def initialize(employee_name, title, salary, boss= nil)
        @employee_name = employee_name
        @title = title
        @salary = salary
        @boss = boss

       self.boss.list_employees << self if !self.boss.nil?
    end

    def bonus(multiplier)
        sum_of_employees = 0
        if self.boss.list_employees.empty?
            return @salary * multiplier
        else    
            queue = self.boss.list_employees
            until queue.empty?
                queue.each do |worker|
                    sum_of_employees += worker.salary
                    queue += worker.list_employees
                    queue.shift
                end
            end
            sum_of_employees * multiplier
        end
    end
end

#added .boss to line 14 and 17