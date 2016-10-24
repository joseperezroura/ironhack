class StringCalculator
	def add(x)
		x.gsub!("$",",")
		x
		y = x.split(",").map { |x| x.to_i }
		p y	
		sum = 0
		y.each { |x| sum += x }
		p sum
	end
end