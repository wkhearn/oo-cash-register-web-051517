class CashRegister
  attr_accessor :total,:discount,:items,:last_transaction_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item,price,quantity = 1)
    @quantity = quantity
    self.total += price * quantity
    quantity.times do @items << item end
    @last_transaction_amount = price*quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      self.total = total*(100-@discount)/100
      return "After the discount, the total comes to $#{total}."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction_amount
  end

end
