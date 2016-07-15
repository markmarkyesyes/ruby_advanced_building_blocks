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

	def my_select
		#select recieves one parameter
		#select creates a new array
		#select adds values determined true in the block to a new array
		select = []

		self.my_each do |value| 
			if yield(value)  
				select << value
			end
		end

		puts select
		return select		
	end

	def my_all?
		#all? is an answering method.
		#all accepts one parameter 
		#all creates a new array with values calculated true by the block passed in.
		#returns true if all values are true
		all = []

		self.select do |value|
			if yield(value)
				all << value
			end
		end
		if all.size == self.size
			puts "True!"
			return true
		else 
			puts "False!"
			return false
		end

	end

end
		


	
	test_array_num = [1,2,3,6]
	test_array_string = ["delicious", "baby", "monkeys"]

#test_array_num.my_each {|param| puts param.to_i * 3}

#test_array_num.my_each_with_index {|value, index| puts "#{index}. #{value}"}

#test_array_num.my_select {|value| value%2==0}

test_array_string.my_all? {|word| word.length >= 3}

