require_relative "init"

garage = Garage.new

ARGV.each do |a|
	@cars.each { |i| garage.add_car(i) if a == i.name }
end

garage.read_from_file
garage.save_to_file
