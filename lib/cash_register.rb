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
  @items << title
  @total += price*quantity
  @last_total = price
end

def apply_discount
  @total = @total - discount
  puts "After the discount, the total comes to $#{@total}."
end

def items
end

def void_last_transaction
end

end
