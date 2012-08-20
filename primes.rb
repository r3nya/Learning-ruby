#!/usr/bin/ruby
# На входе число N, на выходе массив N простых чисел
require 'mathn'

print "n = "
n = gets.chomp.to_i

m = []
gen = Prime.new
n.times { list << gen.succ }

m.each { |i| print i.to_s + " " }
