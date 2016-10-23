require_relative("lib/employee.rb")
require_relative("lib/hourly_employee.rb")
require_relative("lib/multi_payment_employee.rb")
require_relative("lib/salary_employee.rb")
require_relative("lib/payroll.rb")

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

jose = SalariedEmployee.new('Jose', 'fortranr0x@gmail.com', 50000)

mary = SalariedEmployee.new('Mary', 'fortranr0x@gmail.com', 60000)
