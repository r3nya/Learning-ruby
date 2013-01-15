class T
	def initialize(i)
		@i = i
	end

	def to_s
		@i.to_s
	end
end

t = T.new 42
puts t
p t