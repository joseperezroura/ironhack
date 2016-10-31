class Item
    attr_reader :name, :price
  def initialize(name, price)

      @name  = name
      @price = price
  end
      
end

class Houseware < Item

end

class Fruit < Item
 
end

class ShoppingCart
  def initialize
    @items = []
  end

    def total_price_of_items
  total_price_of_items = 0
  @items.each do |item|
    total_price_of_items += item.price
  end
  total_price_of_items
  end 

  def add_item(item)
    @items.push(item)
  end

end

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.total_price_of_items
