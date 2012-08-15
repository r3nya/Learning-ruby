require_relative "garage"
require_relative "cars"

@cars = []
@cars << Cars.new({ :name => "lada", :price => 300, :year => 2012 })
@cars << Cars.new({ :name => "audi", :price => 800, :year => 2000 })
@cars << Cars.new({ :name => "bmw",	:price => 900, :year => 2002 })
@cars << Cars.new({ :name => "vw",	:price => 600, :year => 2011 })
