require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        @salaries.key?(title)
    end

    def >(startup)
        return @funding > startup.funding
    end

    def hire(employee_name, title)
        if self.valid_title?(title)
            employee = Employee.new(employee_name, title)
            @employees << employee
        else
            raise "invalid title"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        salary = @salaries[employee.title]
        if @funding > salary
            employee.pay(salary)
            @funding -= salary
        else 
            raise "not enough funding"
        end
    end

    def payday
        employees.each {|employee| self.pay_employee(employee)}
    end

    def average_salary
        sum = 0
        @employees.each {|employee| sum += @salaries[employee.title]}
        sum / @employees.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        @funding += startup.funding
        @salaries = startup.salaries.merge(@salaries)
        @employees += startup.employees
        startup.close
    end
end
