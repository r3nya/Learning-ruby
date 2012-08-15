class Garage

	attr_reader :cars	

	def initialize
		@cars = []			# В начале пустой массив
	end

	def add_car(car)		# Добавить авто в гараж
		@cars.push car
	end

	def remove_car			# Удалить последнее авто из гаража
		@cars.pop
	end

	def delete_old_car(year)		# Удалить авто старее указанного года
		@cars.delete_if { |auto| auto.year < year.to_i }
	end

	def save_to_file
		File.open("garage.txt", "w") { |f|
			@cars.each { |i| f.puts "#{i.name}:#{i.price}:#{i.year}" }	# bmw:900:2002\n
		}
	end

	def read_from_file
		fields = File.readlines("garage.txt")
		fields.map! { |i| i.chomp.split(":") }
		fields.each { |i| @cars << Cars.new( name: i[0], price: i[1].to_i, year: i[2].to_i ) }
		fields.uniq!
	rescue Errno::ENOENT			# Обработка исключений
		File.open("garage.txt", "w") {}
		puts "File garage.txt created"
	end

end
