class CashRegister
attr_accessor :total, :discount, :items, :last_total

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  quantity.times {@items << title}
  @total += price*quantity
  @last_total = price
end

def apply_discount
   if discount == 0
    return "There is no discount to apply."
  else
    @total -= @total*@discount/100
    return "After the discount, the total comes to $#{@total}."
  end
end

def items
  @items
end

def void_last_transaction
  @total -= @last_total
  @items.pop
end

end
