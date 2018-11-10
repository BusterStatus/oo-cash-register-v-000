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
    discounted_total = self.total * ((100 - @discount) / 100)
  end
  
end