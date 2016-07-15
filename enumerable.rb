module Enumerable
	def my_each
		#each recieves one parameter 
		#iterates over parameter by index
		#stops iterating when it reaches the end of the object passed into it
		#sends its original self at the end of iteration
	i = 0
		while i<self.size
			yield self[i]
			i += 1
		end
	end
end

test_array = [1,2,3,4]
test_array.my_each {|param| puts param.to_i * 3}
