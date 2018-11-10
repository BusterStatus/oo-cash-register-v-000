class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item,price,quantity = 1)
    @cart = []
    quantity.times {@cart << item}
    quantity.times {@total += price}
  end
  
  def apply_discount
    applied_discount = @discount.to_f / 100
    new_total = @total * applied_discount
    @total = new_total
  end
  
end