
# We're going to create an Object Oriented Cash Register that can:
# add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction

class ClassRegister
  attr_accessor :items, :total, :last_transaction, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      @items << title
    end
    self.last_transaction = amount * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
   self.total = self.total - self.last_transaction
 end
end
