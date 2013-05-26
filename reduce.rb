puts (1..10).reduce(0) { |sum, i| sum + i }
puts (1..10).reduce(:+)

puts (1..10).reduce(1) { |mul, i| mul * i }
puts (1..10).reduce(:*)