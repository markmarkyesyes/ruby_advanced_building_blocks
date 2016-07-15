module Enumerable
	def my_each
		#each receives one parameter
		#each has an iteration counter, which increases with each iteration to the size of the object each is called on
		#each iterates over the object, one index at a time.
		#each then prints itself and ends
	i = 0
		while i<self.size
			yield self[i]
			i += 1
		end
		self
	end

	def my_each_with_index
		#each_with_idx receives two parameters
		#each_with_idx has an iteration counter
		#each_with_idx iterates over the size of the object passed in
		#each_with_idx yields the value it is currently iterating over, as well as its index, denoted by the iteration counter

		i = 0
		while i < self.size
			yield(self[i], i)
			i += 1
		end
	end

end
		


	
	test_array = [1,2,3,6]

#test_array.my_each {|param| puts param.to_i * 3}

test_array.my_each_with_index {|value, index| puts "#{index}. #{value}"}
