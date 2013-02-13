#!/usr/bin/ruby

class Person < Struct.new(:name, :age, :gender)
  def scream
    'AGGRRHHH!111'
  end
end

man = Person.new('Vasya', 15, 'Male')
puts man.scream