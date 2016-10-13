=begin
Project 2: Enumerable Methods

You learned about the Enumerable module that gets mixed in to the Array and Hash classes (among others) and provides you with lots of handy iterator methods. To prove that there's no magic to it, you're going to rebuild those methods.

Your Task
Create a script file to house your methods and run it in IRB to test them later.

Add your new methods onto the existing Enumerable module. Ruby makes this easy for you because any class or module can be added to without trouble ... just do something like:


Create #my_each, a method that is identical to #each but (obviously) does not use #each. You'll need to remember the yield statement. Make sure it returns the same thing as #each as well.

Create #my_each_with_index in the same way.

Create #my_select in the same way, though you may use #my_each in your definition (but not #each).

Create #my_all? (continue as above)

Create #my_any?

Create #my_none?

Create #my_count

Create #my_map

Create #my_inject

Test your #my_inject by creating a method called #multiply_els which multiplies all the elements of the array together by using #my_inject, e.g. multiply_els([2,4,5]) #=> 40

Modify your #my_map method to take a proc instead.

Modify your #my_map method to take either a proc or a block. It won't be necessary to apply both a proc and a block in the same #my_map call since you could get the same effect by chaining together one #my_map call with the block and one with the proc. This approach is also clearer, since the user doesn't have to remember whether the proc or block will be run first. So if both a proc and a block are given, only execute the proc.

Quick Tips:

Remember yield and the #call method.
=end
module Enumerable
	def my_each
		if block_given?
			enumerable = self.to_a
			i = 0

			loop do 
				break if enumerable[i] == nil
				yield(enumerable[i])
				i+=1
			end

		else return self
		end

		return self
	end


	def my_each_with_index
		enumerable = self.to_a
		i = 0

		loop do 
			yield(enumerable[i], i)
			i+=1
			break if i == self.size
		end

		return self
	end


	def my_select
		true_elements = []

		self.my_each do |element|
			if yield(element)
				true_elements<<element
			end
		end

		return true_elements
	end


	def my_all?
		self.my_each do |element|
			if yield(element)
			else return false
			end
		end
		return true	
	end


	def my_any?
		self.my_each do |element|
			if yield(element)
				return true
			end
		end
		return false
	end


	def my_none?
		self.my_each do |element|
			if yield(element)
				return false
			end
		end
		return true
	end


	def my_count
		count = self.to_a
		c = 0
		block_c = 0
		loop do
			if block_given?
				self.my_each do |element|
					if yield(element)
						block_c += 1
					end
				end
				return block_c
			else
				break if count[c] == nil
				c +=1
			end
		end
		return c
	end


	def my_map(&proc)
		modified_collection = []
		self.each do |element|
			if proc
				modified_collection << proc.call(element)
			elsif block_given? 
				modified_collection << yield(element)
			end
		end
		return modified_collection
	end


	def my_inject(memo = 0)
		self.my_each do |element|
			memo = yield(memo, element)
		end
		return memo
	end


	def multiply_els
		self.my_inject(1){|a,b| a * b }
	end

end

p "my each"
{:hey=>4, :yo=>5}.my_each { |i, j| p j*4 }
p "my each with index"
[5,2,6,3,4,6].my_each_with_index {|i, j| p j}
p "my select"
p (1..8).my_select { |i| i % 2 == 0}
p "my all?"
p [:h, 5].my_all? {|i| i.is_a?(Symbol)}
p "my any?"
p [:h, 5].my_any? {|i| i.is_a?(String)}
p [:h, 5].my_any? {|i| i.is_a?(Symbol)}
p [:h, 5].my_any? {|i| i.is_a?(Fixnum)}
p "my_none?"
p [:h, 5].my_none? {|i| i.is_a?(String)}
p [:h, 5].my_none? {|i| i.is_a?(Symbol)}
p [:h, 5].my_none? {|i| i.is_a?(Fixnum)}
p "my_count"
p (1..10).my_count { |i| i % 2 == 0}
p (1..10).my_count
p "my map"
p [5,2,6,3,4,6].my_map {|i| i*2}
p "my_inject"
p [0,5,2,6].my_inject{ |i, j| i + j}
p "my multiply els"
p [2,4,5].multiply_els
p "my map with proc"
my_proc = Proc.new {|i| i*4}
p [5,2,6,3,4,6].my_map(&my_proc)
p [5,2,6,3,4,6].my_map {|i| i*5}






