class Employee

  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name =  input_options[:last_name]
    @salary =  input_options[:salary]
    @active = input_options[:active]
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year. Employed: #{active}"
  end
end


class Manager < Employee
  attr_reader :employees
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_raise
    employees.length.times do |i|
      employees[i].give_annual_raise
    end
  end

  def fire
    employees.each do |element|
      element.active = false
    end
  end
end

employee_1 = Employee.new(
                          first_name: "Bill", 
                          last_name: "McNeal", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Harriet", 
                          last_name: "Hayes", 
                          salary: 80000, 
                          active: true
                          )

manager_1 = Manager.new(
                        first_name: "Duncan",
                        last_name: "Peterson",
                        salary: 100000,
                        active: true,
                        employees: [employee_1, employee_2]
                        )
manager_1.print_info
puts employee_1.salary
puts employee_2.salary
manager_1.give_raise
manager_1.fire
employee_1.print_info
employee_2.print_info
