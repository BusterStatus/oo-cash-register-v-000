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
    if @discount > 0
      applied_discount = @discount.to_f / 100
      @total = @total * (1 - applied_discount)
      @total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
  end
  
end