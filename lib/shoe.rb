class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brands

  BRANDS = []

  def initialize(brands)
    @brands = brands
    BRANDS << @brands unless BRANDS.include?(@brands)  #doing BRANDS array/ pushing given @brands into the array unless its already there in the array (include?)brands
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
