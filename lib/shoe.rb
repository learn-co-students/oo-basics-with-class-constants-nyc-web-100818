class Shoe
  attr_accessor :color, :material, :condition, :size
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)
  end


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end
