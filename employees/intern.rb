require "./reportable.rb"
require "./employee.rb"

class Intern < Employee
  include Reportable
  def initialize(input_options)
    super(input_options)
  end
end