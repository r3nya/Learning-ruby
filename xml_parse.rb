#!/usr/bin/ruby

require "rexml/document"

file = File.open("pets.xml")
doc = REXML::Document.new file
file.close

doc.elements.each("pet/name") do |element|
  puts element
end
