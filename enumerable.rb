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
		#all? accepts one parameter 
		#all? checks for values calculated true by the block passed in.
		#all? returns true if all values checked are true
		all = []

		self.select do |value|
			if yield(value)
				all << value
			end
		end
		if all.size == self.size
			puts "true"
			return true
		else 
			puts "false"
			return false
		end

	end

	def my_any?
		#any? is an answering method
		#any? accepts one parameter
		#any? checks for values calculated true by the block
		#if any values are true, any? returns true
		any = []

		self.select do |value|
			if yield(value)
				any << value
			end
		end
		if any.size > 0
			puts "true"
			return true
		else
			puts "false"
			return false
		end
	end

	def my_none?
		#none? is an answering method
		#none? accepts one parameter
		#none? returns true if all arguments pass false

		none = []

		self.select do |value|
			if yield(value)
				none << value
			end
		end
		if none.size == 0
			puts "true"
			return true
		else puts "false"
			return false
		end
	end

	def my_count
		#my_count takes no parameters
		#my_count returns the amount of indexes in a passed value
		puts self.size
		return self.size
	end

	def my_map(&my_procx)
		#my_map takes one parameter
		#my_map creates a new array from an existing one
		#my_map uses the yield from the block to create each new value
		#my_map alternatively accepts a proc
	
		mapp = []

		if block_given?
			self.my_each do |value|
				mapp << yield(value)
			end
			return mapp
		else
			return self
		end		
		
	end

	def my_inject
		#inject takes a memo parameter and a value parameter
		#inject accumulates values passed through it with the memo parameter
		#inject returns the accumulation of the final iteration
		memo = self[0]

		self.my_each do |value|
			memo += yield(memo, value)
		end
		puts memo
		
		return memo
	end

	def multiply_els
		#multiply_els takes an array and multiplies the values
		#multiply_els takes no arguments
		
		mult = self.my_inject {|memo, number| memo*number}
		puts mult
	end


end
		


	
	test_array_num = [1,2,3,6]
	test_array_string = ["delicious", "baby", "monkeys"]

#test_array_num.my_each {|param| puts param.to_i * 3}

#test_array_num.my_each_with_index {|value, index| puts "#{index}. #{value}"}

#test_array_num.my_select {|value| value%2==0}

#test_array_string.my_all? {|word| word.length >= 3}

#test_array_string.my_any? {|word| word.length >= 3}

#test_array_string.my_none? {|word| word.length > 100}

#test_array_string.my_count 

cubs =test_array_string.my_map {|value| "lil" + "#{value}"}

#test_array_num.my_inject { |memo, number| memo + number}

#test_array_num.multiply_els
my_proc = Proc.new {|value| "lil" + "#{value}"}
 test_array_string.my_map(&my_proc)
puts cubs
