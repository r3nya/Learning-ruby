#!/usr/bin/ruby

class Name
	
  def initialize(first, last = nil)
		@first = first
		@last  = last
  end

  def format
    [@last, @first].compact.join(', ')
  end
end

user_names = []
user_names << Name.new('Andrew', 'Lulzov')
user_names << Name.new('Vasya', 'Puskov')
user_names << Name.new('Test')

user_names.each { |n| puts n.format }