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
			if ((i == 1) || (i == 3))
				return lucky13 == false
			end
		end
		return lucky13
	end

	def repeat_seperator(word, seperator, count)
		array = ""

		for i in [0..count.to_i] do
			array += array + "#{word}""#{seperator}" * (count - 1) + word
		end
		return array
	end

	def same_ends?(array, ends)
		if array.first(ends) == array.last(ends)
			return true
		else
			return false
		end
	end

	def starry?(str)
		starry = false
		array = str.split(//)

		array.each do |i|
			index = array.index("*")
			puts "#{array[index-1]}"
			puts "#{array[index+1]}"
			if("#{array[(index-1)]}" == "#{array[(index+1)]}")
				puts "This is running"
				return starry == true
			else
				array.delete(index)
			end
		end
	end
		
		# return index
		

		# starry = false
		# sub = 0
		# for i in [0..str.length] do
		# 	pos = str.index("*")
		# 	puts "#{pos}"
		# 	puts "#{str[pos-1]}"
		# 	puts "#{str[pos+1]}"
		# 	if("#{str[pos+1]}" == "#{str[pos-1]}")
		# 		return true
		# 		# starry == true
		# 	else
		# 		str.slice(pos)
		# 		# str == str.slice!(pos)
		# 		puts "else"
		# 		puts "#{str}"
		# 	end
		# end

		# return false
# end


	def plus_it(word, token)
		word_array = word.split(//)
		token_array = token.split(//)
		for j in (1..token.length-1) do
			puts !word_array.include?(token_array[j])
			if( !word_array.include?(token_array[j]) )
				length = word_array.length
				new_array = Array.new(length)
				new_array.fill('+')
				this = new_array.join
				return this
			end
		end
		for i in (0..word.length-token.length) do
			if(word_array[i..(i+token.length)] != token_array)
				puts"this"
				word_array.delete_at(i)
				word_array.insert(i, '+')
				puts word_array
			end
		end
		final = word_array.join
		return final
	end

	def zero_front(array)
		zero_array = []
		for i in (0..array.length) do
			index = array.find_index(0)
			if (index == nil)
				zero_array
				final_array = zero_array + array
				return final_array
			end
			array.delete_at(index)
			zero_array[i] = 0
		end
	end
	
end