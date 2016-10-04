class ShoppingCart
	attr_reader :item 
  def initialize
    @items = []
  end

end


class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
	  #Your beautiful code goes here
      @price 
  end
end


class Houseware < Item
  def price
      #Hmmm maybe this changes somehow..
      if @price >= 100
      	@price = @price * 0.95
      else 
      	@price
      end 
  end
end


class Fruit < Item
  def price
  	t = Time.now
  	if t.saturday ? || time1.sunday ?
  		@price = @price * 0.90
  	else
  		@price
  	end

    

  end
end


banana = Fruit.new("Banana", 10)
orange = Fruit.new("Orange", 10)
rice = Fruit.new("Rice", 1)
vacuum = Item.new("Vacuum Cleaner", 150)
anchovies = Fruit.new("Anchovies", 2)
bpen = Item.new("Blue Pen", 1)

