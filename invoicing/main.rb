require 'active_support'
require 'active_support/all'
include ActiveSupport::NumberHelper
load 'invoice.rb'
load 'invoiceitem.rb'

invoice = Invoice.new

count = 0

  loop do

      invoiceitem = InvoiceItem.new

  puts "Input an item or hit ENTER when you're done."

  print "Product Name: "

      invoiceitem.product_name = gets.chomp

  break if  invoiceitem.product_name == ""

  print "Unit Price: "

    invoiceitem.sale_price = gets.chomp.to_f

  print "Quantity: "

    invoiceitem.quantity = gets.chomp.to_i


  print "Tax Rate: "

    invoiceitem.tax_percentage = gets.chomp.to_f

    count += 1
    invoiceitem.id = count
#.push and << do the same thing.
    invoice.items << invoiceitem
  end

  puts ""

  puts "number of invoice items: #{invoice.total_invoice.size}"

  puts ""

    invoice.total_invoice.each do |final|
      puts "Invoice ID: #{final.id}"
      puts "Product: #{final.product_name}"
      puts ""
end
#number_to_currency Formats a number into a currency string (e.g., $13.65)
print "Cost before tax:  #{number_to_currency(invoice.sumup_pre.sum)}"

print "Tax Cost:  #{number_to_currency(invoice.tax_sum.sum)}"

print "Final Amount:  #{number_to_currency(invoice.final_cost.sum)}"
