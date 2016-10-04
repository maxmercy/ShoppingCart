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
      @price = price 
  end
end


class Houseware < Item
  def price
      #Hmmm maybe this changes somehow..
      if @price >= 100
      	@price = @price * 0.95
      end 
  end
end


class Fruit < Item
  def price
  	time1 = Time.new
  	if time1 
      #Something special may go here too...
      
  end
end