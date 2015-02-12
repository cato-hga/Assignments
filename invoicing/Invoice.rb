class Invoice

  attr_accessor :items

  def initialize
    @items = []
  end

  def total_invoice
    @items.reject { |item| item.quantity == 0}
  end

  def sumup_pre
    total_invoice.collect {|total| total.quantity * total.sale_price}

  end

  def tax_sum
    total_invoice.collect { |tax| tax.quantity * tax.sale_price * tax.tax_percentage}
  end

  def final_cost
    sumup_pre + tax_sum
  end

end
