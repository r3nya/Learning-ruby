# encoding: UTF-8

require 'singleton'

class Cats
  include Singleton
  def initialize
    @cat = { name: 'Alice', sex: 'F' }
  end

  def ask(msg)
    puts msg
  end

  def get_from_cat(key)
    @cat[key]
  end
end

kitty = Cats.instance
puts "У меня есть кошка. Её зовут #{kitty.instance_eval { @cat[:name]} }"
print "Она может кричать: "
