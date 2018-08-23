require "./reportable.rb"
require "./employee.rb"


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