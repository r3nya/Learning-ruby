require 'mathn'

p "List of prime numbers from 2 to 100:"
ls_prime = Prime.new
ls_prime.each { |n| print n, " "; break unless n < 100 }
