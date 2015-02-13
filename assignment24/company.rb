class Company
  attr_accessor :name, :city, :employees

#setting up the employees attribute to be an Array
  def initialize
    @employees = Array.new
  end

  def fired_e(fired)
    @employees.delete_if {|letgo| letgo.employee_id == fired}
  end

  def all_employees
    @employees.each do |a|
      print "|ID: ", a.employee_id, "| Name of Employee: ", a.name, \
            "|City of Employment: ", a.city,  "\n"
    end
  end
end
