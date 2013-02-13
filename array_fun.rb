#!/usr/bin/ruby

require 'active_support/all'

array = [0, 1, 2, 3, 4, 5, 6]

array.from(4)           #=> [4,5,6]
array.to(2)             #=> [0,1,2]
array.in_groups_of(3)   #=> [[0,1,2],[3,4,5],[6,nil,nil]]