require 'date'

class ShoppingCart 
  def initialize
    @items = []
  end

  def add_item(item)
  	@items.push(item)
  end

  def checkout
  	final_price = 0
  	@items.each do |pr|
  		final_price += pr.price
  	end
  	puts " Give me #{final_price}€! Quick"
  end


  
end






class Item 
	attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      @price 
  end
end

# 5% reduction for Housware worth more than 100
class Houseware < Item
  def price
      if @price > 100
      	@price = (@price * 0.95)
      else 
      	@price
      end 
  end
end

# 10% reduction the we on fruits
class Fruit < Item
  def price
  	t = Date.today
  	if t.wday == 0 || t.wday == 6
  	  		@price = @price * 0.90
  	else
  		@price
  	end
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
joshs_cart.checkout