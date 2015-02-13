require 'active_support'
require 'active_support/all'

load "company.rb"
load "employee.rb"



#in this section I created a new company, new company name, and name of city.
puts ' '
puts "*Welcome! Please add your company and then chooose who you would like to hire and",\
      "terminate.*" "\n"

puts ' '

company = Company.new

print "What is the name of your company? "

company.name = gets.chomp.split.map(&:capitalize).join(' ')

print "Where is your company located? "

company.city = gets.chomp.split.map(&:capitalize).join(' ')

puts " "

loop do

  employee = Employee.new
  employee.employee_id = rand(1..999).to_s + 'KHSE'


  print "*HIRE AN EMPLOYEE* "
  puts ' '
  print "Enter Name of Employee? "

  employee.name = gets.chomp.split.map(&:capitalize).join(' ')
  break if employee.name.empty?

  print "Employee City? "
  employee.city =  gets.chomp.split.map(&:capitalize).join(' ')

  puts ' '

  puts "If you would like to continue, enter name of more employees. If not, press ENTER to exit"

  puts ' '

  company.employees << employee
end

  puts ' '
  puts '____________________________________________'
  puts '| Summary of company and new employees '

  puts ' '

  print '| Company: ', company.name, '| Company City: ', company.city, "\n"

  puts ' '

  company.all_employees

  puts ' '

  loop do

    puts ' '
    print "Hit ENTER to exit or 'A' to remove and employee:"
    remove = gets.chomp.capitalize
    break if remove.empty?
    if remove == 'A'

  loop do
    puts ' '
    print "Input employee ID to terminate. Or press ENTER to quit."

    terminate = gets.chomp
    break if terminate.empty?

    company.fired_e(terminate)

    puts ' '

    puts "UPDATED EMPLOYEE LIST:"

    puts ' '


  company.all_employees
    end
  end
end
    puts ' '
    puts "Thank you! Your roster has been fully updated. "

    puts ' '
