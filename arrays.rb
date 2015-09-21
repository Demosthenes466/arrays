module Arrays
	

	def middles(ar1, ar2)
		return [ar1[1], ar2[1]].join
	end
	
	def max(array)
		max = array[0]

		array.each do |i|
			max = i if i > max  
		end
		return max
	end

	def lucky13?(array)
		lucky13 = true
		array.each do |i|
			i = 1 || 3 ? lucky13 == false && break : lucky13 == true
		end
		return lucky13

	 
	end
	
end