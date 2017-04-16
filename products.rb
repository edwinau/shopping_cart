class Product

  attr_accessor :name, :base_price, :tax_rate, :z

  def initialize(name,base_price)
    @base_price = base_price
    @tax_rate = 1.1
    @name = name
    self.create
    @@z << @name.new

  end

  def self.create
    @@z << @name.new
  end

  def product_tot
    return @base_price * tax_rate
  end

  def self.shoppingCart
    return @@z
  end


end
