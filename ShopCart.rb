require 'date'

class ShoppingCart 
  def initialize
    @items = []
  end

  def add_list(item)
  	@items.push(item)
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


banana = Fruit.new("Banana",10)
orange = Fruit.new("Orange",10)
rice = Fruit.new("Rice",1)
vacuum = Houseware.new("Vacuum Cleaner",150)
anchovies = Fruit.new("Anchovies",2)
bpen = Houseware.new("Blue Pen",1)



puts orange.price
puts vacuum.price
