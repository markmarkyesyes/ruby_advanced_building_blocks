------------------------------
CONDITIONALS AND FLOW CONTROL
------------------------------
1 #What is a boolean?
	#A boolean is a Primal Data Type that exists as either true or false.
	true false 

2 #What are truthy values?
	#All values in Ruby are truthy, apart from nil and false
	"string" true 0 []
	variable = 5 # => truthy

3 #Are the following considered true or false? 
	nil == false
	0 == true
	"0" == true
	"" == true
	1 == true 
	[] == true
	{} == true
	-1 == false

4 #When do you use elsif?
	#elsif is used to add extra conditionals to an if statement.
			#Example

			ages = [21,41,33,05,23]
			ages.each do |age|
				if age == 21
					puts "#{age.to_s}, eh? Welcome"
				elsif age > 21
					puts "#{age.to_s}, eh? Aren't you a bit old for this?"
				else puts "Not a chance, buster."
				end
			end

5 #When do you use unless?
	#unless executes when the condition it contains is false.
	#It is almost a mirror to an if statement. 
			#Example 
			status = {"john"=>"cool", "you"=>"not so much"}
			status.each do |name, status|
				unless status == "cool"
					puts "#{name} is such a dweeb"
				end
			end

			#Example 2
			grades = {'Billy'=>98, 'Jane'=>56, 'Licorice'=>99, 'Ray Ray'=>87}
			status.each do |student, grade|
				unless grade > 78
					send_a_letter_to_parents
				end
			end

6 #What does <=> do?
	#The spaceship operator compares two values ( a <=> b ) and returns:
		#-1 if the <value is less than >value
		# 0 if the values are equal
		# 1 if the >value is less than <value
	#If the spaceship operator reults in 1, it will swap their positions in the collection,
	#else it will leave their positions alone.

	#Ruby's sort method utilizes the spaceship operator, but not as a sorter itself, rather as 
	#an operator to determine >< comparisons, and swap the position of values through multiple iterations
	#through a collection until the collection is sorted as defined in sort's block.
			#Example
			spaceship = 5<=>6 # => -1
			spaceship = 6<=>5 # =>  1
			spaceship = 5<=>5 # =>  0

			collection = [4,5,7,6]
			collection.sort {|a, b| a<=>b} # => [4,5,6,7]
			collection.sort {|a, b| b<=>a} # => [7,6,5,4]

7 #Why might you define your own <=> method?
?????????????????????????????????????????????????????????????????????????????????????????????

8 #What do the following logical operators do?
	||, or  #Or is used in a condition to compare against multiple elements left to right. 
			#Execution stops with the first comparison that returns true, otherwise if there are no matches,
			#or returns false.
			#Example
			cookie_stash = {"Chocolate Chip"=>2, "Macademia Nut and White Chocolate"=>8, "Sugar"=>12}
			cookie_stash.each do |varietal, stock|
				if stock > 4 || varietal.downcase == "sugar"
					flexible_stock = stock - 4
					puts "#{stock} #{varietal} cookies??? Feed #{flexible_stock} to the hungry!"
				else puts "my preciouses.... my #{varietal} preeecioussesss."
				end
			end

	&&, and	#&& is used to compare multiple values against other values. 
		    #The condition will evaluate as true if all values compared with && match the value(s)
	   	    #they are being compared against.
			#Example
			if name_field.length > 2 && age.to_i > 21
				puts "Enjoy your secrets"
			end

			#When && is used outside of a conditional, it returns the last element evaluated.
			#Example
			p = 4 && 5 
			puts p # => 5


	! , not	#Reverses the boolean value of the element it is applied to
			#Example 
				!true == false # => true
			#Example 2 
				names = ["jim", "smith"]
				names.each do |name|
					if !name == "jim"
						p "Youre safe for now 'not jim'"
					else p "JIM YOU CANT RUN ANY FURTHER"
					end
				end
			#When using not, symbol operators will have a higher precedence over verbal operators.
			#This means that if you use not with && in the same conditional, && will resolve first, then not.
			#if you use ! with && in the same conditional, the conditional will resolve left to right as usual.
		  	#Example
		  		not true && false # => && evaluates true, then not makes it false
		  		!true && false # => ! evaluates first and makes true false, then && evaluates false.

9 #What is returned by:
	puts ("woah") || true # => \n woah \n true

10#What is ||=?
	#--From SO---http://stackoverflow.com/questions/995593/what-does-or-equals-mean-in-ruby---#
	# ||= is a "conditional assignment operator" meaning that if the first value is false or nil, assign it the second value.
	# if the first value is true, then leave it alone.
			#Example
			a = false
			b = true
			a ||= b 
			puts a # => true

			#Example usage: to call other methods to fill empty form values, when you want to make sure a field is filled in.

11#What is the ternary operator?
	#A ternary operator handles three values, and is most commonly used as an if/else conditional.
			#Syntax from http://www.tutorialspoint.com/ruby/ruby_operators.htm
				#If Condition is true ? Then value X : Otherwise value Y
			#Example
				Math.rand(100)&&Math.rand(100) == 4 ? puts "You won the Lottery!!!" : puts "neener neener"

			#Example 2
				full_name = [['john', 'smith'], ['mary','jane']]
				full_name.each do |name|
					name[0]||name[1] == 'mary' ? p 'you smell good' : p 'keep movin, bub'
				end

			#Example 3 : build a benchmark comparing ternary conditional vs literal conditional
			
12# When should you use a case statement? 
	#As far as I can tell, case statements are very similar to an if statement. It might work quicker if you
	#have a lot of conditions in one statement, but that is speculation.
	?????????????????????????????????????????????????????????????????????

---------
ITERATION
---------

1 #What does loop do?
	#loop iterates over a block of code until it is stopped by a break statement.
	#loop is not often used because there are usually more concise methods for looping.
		#Example
		index_variable = 0
		loop do 
			index_variable += 1
			puts index_variable
			break if index_variable >10
		end

	#loops are also used to iterate over external enumerators

2 #What are the two ways to denote a block of code?
	#If the block is to be on one line: {}
	#if the block is to be on multiple lines: 
		obj.method do |instance_variable|
			code
		end

3 # What is an index variable?
	#An index variable is a variable outside of a loop that is used to track the number of 
	#times a loop has cycled. You increment the external variable from inside the loop,
	#and usually the variable is used as a part of a condition to break the loop.

4 # How do you print out each item of a simple array with...
		array = [1,3,5,7]

		#Example: loop 
			i = 0
			loop do 
				puts array[i]
				i+=1
				if i == array.length
					break
				end
			end

		#Example: while
			i = 0
			while i < array.length
				puts array[i]
				i+=1
			end

		#Example: for
			for i in 0..(array.length-1)
				puts array[i]
			end

		#Example: each
			array.each {|i| puts i}

		#Example: times
			 (array.length).times do |i|
			 	puts array[i]
			 end

5 # What is the difference betwween while and until?
	#While executes while the condition is true, and until operates until the condition is true.

6 # How do you stop a loop?
	# break

7 # How do you skip to the next iteration of a loop?
	# next

8 # How do you start the loop over again?
	# rewind

9 # What are the basic differences betweens situations when you would use while, times, and each?
	# while is used to keep processes running until they are no longer needed. So that could be an entire application,
	# or a segment of a game that needs to run side by side with the main part.

	#times is used for specific amounts of iteration, for when we know how much of something we will want
	#even though the collection we are accessing may be much larger. good for pulling a small slice of the collection,
	#though slice should be used to create an enumerable if we plan to enumerate over the portion of 
	#the collection.	
			
	#each is used whenever we want to iterate over a collection in its entirety: think searching, filtering,
	#modifications, etc.

10 # What does nesting loops mean and when would you use it?
	# Nesting loops is when you create a loop, then create another loop inside it, with no restrictions on the amount
	# of loops at one time. This is useful when you want to do things like loop and enumerate over multiple values 
	# or compare collections.

---------------------------
BLOCKS, PROSC, AND LAMBDAS.
---------------------------

+++Tangent+++ http://mixandgo.com/blog/mastering-ruby-blocks-in-less-than-5-minutes

1 # What are ruby blocks?
	#A block is code that goes between: a. {} for single line
	# 									b. do end for multiple lines

    # || are used to wrap around parameters, calllllllled block parameters.


+++Tangent+++ Codecademy ruby lesson 12
	
	# Returning from a proc will return from the method as well. 
		#Example
			def things_inbetween
				a_thing = Proc.new {return p "I am the thing"}
				p "I am inbetween"
			end
			puts things_inbetween # => I am inbetween

			def things_inbetween
				a_thing = Proc.new {return p "I am the thing"}
				a_thing.call 	  # => Adding this call will call the proc which will return from the method before the third line.
				p "I am inbetween"
			end
			puts things_inbetween # => I am the thing
	
	#We can call Procs directly using the .call method. Parameters go in parentheses after the call.
		#Example

			 numbers = [3,5,2,6,2]
			 doubler = Proc.new {|i| i*2}
			 doubler.call(numbers) # => [3,5,2,6,2,3,5,2,6,2]
			 # notice that when the array is passed in, the entire collection is treated as one parameter
			 doubler.call(numbers[4]) # => 4
			 # passing in a single number results in integer math, where as passing in an array does concatenation.
			 # .call does not change the object type passed in, vs enumerators.

	#since methods can be called with symbols, we can use an ampersand to pass methods as Procs.
		#Example 
			strings = ["1", "2", "3"]
			int = strings.map(&:to_i) #Passing the method as a Proc executes the method as a block.
			# => [1,2,3]


+++End Tangents+++

1 #How is a block like a function?
	#A block is a chunk of code used as inputs for methods. 
	???? define function ruby ????

2 #How is a block different from a function?
	???????????????

3 #What are the two ways to declare a block?
	{} # => This is an inline block for when your block is defined on a single line
	do end # => These wrap your block when you want to use multiple lines to define the block

4 #How do you return data from a block?
	#using yield in a method will return the evaluation of the block when it is reached in the method.
	#blocks are only allowed implicit return of last line evaluated, and cannot use the return keyword. 
	#use procs, lambdas, or methods for explicit returns.	
		#Example 
			def my_meth
				puts "thats not mine officer"
				yield 								# => The block is run and implicit return (last expression evaluated) is given to the yields position in the method.
				puts "These arent my pants officer"
			end
			my_meth {puts "Officer: mmmmmmmmhmmmm"}

5 #What happens if you include a return statement in a block?
	????????????????

6 #Why would you use a block instead of just creating a method? 
	???????????
7 #What does yield do?
	? #Yield pauses a method, evaluated the block passed to that method, 
	  #then returns to the method with the implicit return from the block, and continues evaluation of the method
	  # How does yield work?
		#Example
			def my_method
				puts "reached the top"
				yield
				puts "reached the bottom"
			end

			my_method do
				puts "reached yield" # => Passing a block after the method allows that block to be called by yield. 
			end

8 #How do you pass arguments to a block from within a method?
	# Yield parameters. 
	# The block parameters must be specified after the yield ( yield() ) with values local to the method 
	# yield is called in. The amount of yield parameters specified must be matched in the block passed into the method.
	# The block parameters will be assigned to the yield parameters in respective order.

	# Parameters passed in from the block are local to the block when the block is called inside the method.
	# ie. when a block is being evaluated in a method, its parameters cannot be accessed by the method because the method has
	# yielded to the block.

		#Example 
			def random_cookie_generator
				dough=['sugar','nut','lace','creamed']
				filling=['chocolate chips', 'gummi worms', 'pistachio']
				yield(dough[rand(0..(dough.size-1))],filling[rand(0..(filling.size-1))])
			end

			random_cookie_generator {|dough, filling| p "#{filling} #{dough} cookie"}

9 #How do you check whether a block was actually passed in?
	#by using the block_given? method. 
	#The block_given? method is a Kernel method that is used in a conditional to return true or false
	#evaluating whether or not a block was passed into a method.
		#Example
			def is_there_a_block
				if block_given?
					yield
				else p "No block given"
				end
			end
			is_there_a_block{puts "There is a block"} # => There is a block
			is_there_a_block # => No block given

10 #What is a proc?
	# A proc is essentially a 'saved' block. Since blocks are not objects, Procs give you the 
	# chance to save a block as an object and pass it around.
	# A Proc will assign nil to any undefined parameters.
		#Example
		?????????????????????????????????????????????????
			
		#Example (from codecademy ruby lesson 12, section 6.)
			multiples_of_3 = Proc.new do |number| # => here we create a Proc and assign it to a variable. 
				n% 3 == 0
			end

			(1..100).to_a.select(&multiples_of_3) # => Calling the proc in place of a literal block
												  # => The variable points to a block object, aka a Proc.
11 #What's the difference between a proc and a block?
	# A proc is an object, and a block is not
12 #When would you use a proc instead of a block?
	# Why use procs? it seems like the 80/20 on this is to keep yourself from repeating code. 
	# If there is a block you use for multiple things, best to save it as a Proc and point to it
	# rather than writing it explicitly every time you need it. 
		#Example (from codecademy ruby lesson 12, section 8.)
			group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
			group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
			group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

			over_4_feet = Proc.new {|height| height >= 4}

			can_ride_1 = group_1.select(&over_4_feet)
			can_ride_2 = group_2.select(&over_4_feet)
			can_ride_3 = group_3.select(&over_4_feet)

13 #What is a closure?
	#closures allow for the passing around of chunks of code. 
	#In ruby they include blocks, procs, lambdas, and Methods.

14 #What is a lambda?
	#a lambda is a proc that has rigid argument handling. 

15 #What's different between a lambda and a proc? 
	#procs will assign nil to undefined arguments, lambdas will throw errors.

16 #What is a Method (capital "M")?
 	#A Method is a type of closure.

17 #What do Methods basically allow you to do that could probably be pretty interesting when you're writing some more advanced programs later on?
	#Methods make it easy to separate functions within a program and allow them to interact easily. 

-----------------------
ENUMERABLES AND MODULES
-----------------------

1 #What is a module?
	# a module is a collection of methods and constants.
2 #Why are modules useful?
	# Modules are useful for including certain scopes of functionality provided by grouped methods and constants
	# so that you can have a range of functionality without having to include an entire library. 
	# tl:dr only include what you need, but have the flixibility to do whatever you need within that scope of functionality.

3 #What does #each do?
	#each enumerates over a collection applying a block to each object in sequence. 
		#Example
			names = ['john','jacob','jingleheimer','schmidt']
			names.each {|name| name.capitalize!}
			# => ['John','Jacob','Jingleheimer','Schmidt']

		#Example
			students_w_grades = {'Billy'=>78, 'Jane'=>98}
			students_w_grades.each {|name, grade| puts "name:#{name} grade:#{grade}"}
			# => name:Billy grade:78
			# => name:Jane grade:98

4 #What does #each return?
	#each returns the implicit return of the block given for each value in the collection evaluated, 
	#in the sequence the collection was evaluated.
	#if no block is given, it returns the original collection as an enumerable.
	#When iterating over a multidimensional array, you can include multiple block variables for each 
	#item in the subarray, as each subarray is iterated over as a single iteration. 
		#Example 
		array = [[1,2,3],[1,2,3],[1,2,3]]

		array.each do |a,b,c|
			p ad
			p b
			p c
		end 		# => outputs each value of each subarray on its own line.

		array.each do |a,b|
			p a
			p b
		end 		# => outputs the first two values of each subarray on each line
					# => (could be useful for pulling previews out of MD arrays)

		array.each do |a,b,c,d|
			p a
			p b
			p c
			p d
		end 		# => outputs the three values in each subarray followed by a nil for 
					# => the nonexistent fourth value assigned in the block.
	#even if you are only using one element in the nested array, you must specify the preceding 
	#elements in the block, as the enumerators assign left to right.



5 #What does #map do?
	#map evaluates each item in a collection with a block and returns the values in a new array.
		#Example
			(1..10).map{|number| number*2} # => [2,4,6,8,10,12,14,16,18,20]

6 #What does #map return?
	#map returns an array populated by the sequential implicit return from the block given.

7 #What is the difference between #map and #collect?
	#They are synonymous

8 #What does #select do?
	#select works similarly to each, except it evaluates each value in the collection against the block
	#using the block as a conditional, and rturning true or false. true values are then returned in sequence in
	#whatever form the original collection was passed in.
		#Example 
			user_age = {'Billy'=>18, 'Jane'=>99}
			verified_users = user_age.select {|name, age| age>21}
			p verified_users # => {"Jane"=>99}

			??????????????????????????????????????????????
			does select skip values with nil when searching for more values than a subarray contains?
			??????????????????????????????????????????????

10 #What is the difference between #each #map and #select?
	#each applies a block to every element of the collection and returns a new collection
	#map applies a block to every element of a collection returning a new array
	#select evaluates every element of a collection against a conditional returning only the true values in the original enumerable.

11 #What does #inject do?
	#inject enumerates over a collection, returning an accumulator value to itself to be used in the next iteration.
		#Example
			array = [22,4,11,5,2,2]
			p array.inject{|memo, value| memo+value} # => 46
			#The example takes the initial value (implicitly the first value in the collection)
			#inject then begins to iterate over the second value in the collection, eg 22(memo)+4(value)
			#inject implicitly returns the final memo value (46)

12 #When might you use #inject?
	#for more elegant totalling, or factoring. seems to be useful for aggregating mathematical data.

13 #How do you check if every item in a hash fulfills a certain criteria?
	# by using the method .any?
		#Example
			array = [22,4,11,5,2,2]
			p array.any? {|number| number % 2 == 0} # => true

14 #What about if none of the elements fulfill that criteria?
	# by using the .none? method.
		#Example 
			array = [22,4,11,5,2,2]
			p array.none? {|number| number == 300} # => true

#What (basically) is an enumerator?
	#an enumerator is a method that iterates sequentially over each object in a collection(an enumerable that can be searched)

---------------
Writing Methods
---------------

1 #How many things should a method ideally do?
	# => ONE THING.

2 #What types of things should a method modify?
	#methods should only modify things inside themselves, then pass values to other methods
	#(See Example in 3.5 here)

3 #What should you name a method?
	#descriptive, short, 
	#and based on the intended side effect, or value to be sent.

3.5 #Methods should end with a '?' if they are returning true or false. These types of methods are
	#called predicate methods.
		#Example
			def is_a_cat?(animal_in_question)
				animal_in_question.downcase == 'cat' ? true : false
			end
			public :is_a_cat?
		
			animals = ['dog','cat','bird','lamb']

			animals.each do |animal|
				puts "is #{animal} a cat?"
				puts animals.is_a_cat?(animal)
			end

4 #What does self mean?
	#self refers to the Object it is contained within. Inside of a Class, Method, or Module,
	#it refers to the Object, and when called as an instance, it refers to that instance object.
	#The largest scope of use case with self is with instance objects, as it allows one cookie cutter
	#to individually reference and modify every object performing the same method call.

++tangent++ https://hackhands.com/three-golden-rules-understand-self-ruby/
	#Use self when setting/getting instance attributes inside a class definition.
		#Example
			class Person
				attr_accessor :name

				def initialize(name)
					@name=namete
				end

				def instance
					self
				end
			end
			me = Person.new("Mark")
			self_me = me.instance

++++complete tangent when sane +++++



5 #What do you need to do to create your own Ruby script file?
	#save your plain text file as .rb
	
6 #How would you run a Ruby script from the command line?
	#By moving to the directory the file is located in and typing 'ruby file.rb'

7 #How can you check whether your script was being run from the command line?
	????????????????????????????????????????????

8 #What is a shebang line?
	#It is a line that calls the ruby interpreter from inside the script, vs. having to
	#call it manually from the command line
	#insert a 'shebang' line at the top of the .rb file. 
		#!/usr/bin/ruby 
	#(refers the hash symbol then 'bang' symbol. hashbang::shbang::shebang)

9 #What does require do?
	#require will require that the gems specified after the require command will be 
	#included in the script.
		#Example (for default gems directory)
			#!/usr/bin/ruby 
			require dogs.rb
			class Cats
			end

	#require will default to the default gems directory, but a custom drectory can be 
	#specified by including the file path before the script name
		#Example
			#!/usr/bin/ruby 
			require usr/Documents/dogs.rb
			class Cats
			end
	#to require a file in irb, simply 'require ./file.rb' giving the correct file path.

	++RUBYDOC++
	#If the filename has the extension “.rb”, it is loaded as a source file; if the extension 
	#is “.so”, “.o”, or “.dll”, or the default shared library extension on the current platform,
	# Ruby loads the shared library as a Ruby extension. Otherwise, Ruby tries adding “.rb”, 
	# “.so”, and so on to the name until found. If the file named cannot be found, a LoadError 
	# will be raised.
	++RUBYDOC++

10 #What does load do?
	#Whereas require only loads gems once, when the file is intially loaded, or the irb session is initialized,
	#load will continuously load the gem files, so that changes made to them will be reflected immediately
	#in your session.

11 #How do you access any parameters that were passed to your script file from the command line?
	# The special constant 'ARGV' creates an array with all the user inputted arguments, and can be accessed
	# as an enumerable in any ruby script to view your inputs.
		#Example
			++not sure when i would use this++
			
12 #What does #send do?
	#send allows you to call a method at will while the program is running
		#Example 
		class Gopher
			def get_coffee
				puts "right away! coffee!"
			end
			def get_tea
				ptus "right away! coffee! err... tea!"
			end
			public :get_coffee, :get_tea
		end
		me = Gopher.new
		me.send :get_coffee


13 #When would #send be used that's different from just running the method on an object 'normally'?
	#call can be used dynamically to call and test methods during runtime.