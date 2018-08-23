module Reportable
  def send_report
    puts "Sending email..."
    #email code goes here
    puts "Email successfully sent"
  end
end

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
  include Reportable
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

class Intern < Employee
  include Reportable
  def initialize(input_options)
    super(input_options)
  end
end


intern_1 = Intern.new(
                      first_name: "Dingo",
                      last_name: "Milkfart",
                      salary: 20000,
                      active: true
                      )
employee_1 = Employee.new(
                          first_name: "Billium", 
                          last_name: "Bangarang", 
                          salary: 70000, 
                          active: true
                          )
employee_2 = Employee.new(
                          first_name: "Destiny", 
                          last_name: "Dungaroo", 
                          salary: 80000, 
                          active: true
                          )
manager_1 = Manager.new(
                        first_name: "Tangus",
                        last_name: "Barington-Comsey",
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
