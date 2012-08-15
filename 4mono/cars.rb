class Cars
	
	attr_accessor	:price
	attr_reader		:name, :year

	def initialize(options={})	# Если не передано аргументов => nil
		@name	= options[:name]
		@price	= options[:price]
		@year	= options[:year]		
	end

	def info					# Вывод информации о машине
		yield(name)
		yield(price)
		yield(year)
	end

end
