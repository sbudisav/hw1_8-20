require "./reportable.rb"
require "./manager.rb"
require "./intern.rb"


intern_1 = Intern.new(
                      first_name: "Dingo",
                      last_name: "Mangus",
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
