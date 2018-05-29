class CashRegister
attr_accessor :total, :discount, :item, :last_transaction

def initialize()
  @total = 0
  @discount
end

def total
  @total
end

def add_item(title, price, quantity = nil)
  @total + price*quantity
end

def apply_discount
end

def items
end

def void_last_transaction
end

end
