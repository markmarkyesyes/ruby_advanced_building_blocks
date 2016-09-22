#----------------------------------------
#LEARN RUBY - ARRAYS, CONDITIONALS, LOOPS
#----------------------------------------

#my_array = ["matt", "phil"]  
#my_array is an array with the values "matt" and "phil". Arrays are collections of values.
#Create an array with the values 1 and 2.
	my_array = [1,2]

#Create an array with nothing inside it.
	empty_array = []

#Create an Array that contains the values "mike tyson", 89, and 9.7.
	heterogenous_array = ["mike tyson", 89, 9.7]

#Identify the components of the following expression:
	students = ["mary", "kathy", "frank"]
	#students is a variable pointing to and Array
	#= is an assignment operator, pointing students to the array following
	#[] is a method for creating an array
	# "mary" is a string value at the 0 index of the array
	# the , symbols separate the values into different indexes within the array.

#What does the following expression return:
	["uno", "dos", "tres"].length()
	#the length method called on an array returns the number of values contained therein.

#Is this array valid?
	name = "clem"
	age = 32
	[name, age]
	# => yes

#Get the first element of the lyric Array
	lyric = ["laughter", "it's", "free"]
	lyric[0]
	lyric.first

#Get the last element of the lyric Array.
	lyric[-1]
	lyric.last

#Add the string "open up shop" to the end of the ruff Array.
	ruff = ["stop", "drop", "shut 'em down"]
	ruff << "open up shop"
#or
	ruff.push("open up shop")

#What does the following expression evaluate to?
	5 == 5 # => true

#What does the following expression evaluate to?
	true = 6 # => SyntaxError: can't assign to true
				#true is a boolean value, not an assignable object.

#Demonstrate that "matt" is the same as "matt".
	"matt" == "matt"
	#however..
	p ("matt".object_id == "matt".object_id) # => false
	#Each instance is a different object, but when identical strings are evaluated as 
	#equal? the conditional operator will return true.

# What does the following expression evaluate to?
	4 != 4 # => false
	#also...
	p (4.object_id != 4.object_id) # => false
	#fixnums have set object id's equivalent to double their value +1

#What does the following expression evaluate to?
	5 > 4 # => true

#What does the following expression print?
	if 5 > 4
	  puts "5 is greater than 4"
	end
	# => 5 is greater than 4

#What does the following expression print?
	if 5 < 4
	  puts "5 is less than 4"
	else
	  puts "5 is not less than 4"
	end
	# => 5 is not less than 4

#What does the following expression print?
	if "sam" == "cat"
	  puts "sam equals cat"
	elsif "matt" == "matt"
	  puts "matt equals matt"
	else
	  puts "whatever"
	end
	# => "matt equals matt"

#What does the following expression print?
	if 5
	  puts "Hello there"
	end
	# => Hello there
	# 5 is a truthy value (implicitly true) and the conditional evaluates true.

#What does the following expression print?
	if "bob"
	  puts "bob is truthy"
	else
	  puts "bob is falsey"
	end
	# => bob is truthy

#What does the following expression print?
	if nil
	  puts "nil is truthy"
	else
	  puts "nil is falsey"
	end
	# => nil is falsey
	#nil is not an object, and cannot be true.

#What does the following expression print?
	puts "This syntax is cool" if true
	# => This syntax is cool

#What does the following expression print?
	puts "Tall buildings" if false
	# => nil

#What is the value of x?
	x = 5
	x = x + 1 # => Here, x is now pointing to 5 + 1, NOT 6
	x == 6 # => true

#What is the value of mode?
	mode = "chill"
	mode += "hippie"
	mode == "chillhippie" # => true

#What does the following code print?
	counter = 0
	while counter < 3
	  puts "Went through the loop"
	  counter = counter + 1
	end
	#Went through the loop
	#Went through the loop
	#Went through the loop
	# => Uses an index variable incremented inside the loop to meet the condition in while,
	# => thus breaking the loop.

#What does the following code print?
	while 3 > 15
  		puts "This is the end"
	end
	# => infinitely, This is the end
	#nothing will cause while to evaluate false, resulting in an infinite loop.

#What does the following code print?
	while true
	  puts "This is the song that never ends"
	end
	# => infinitely, This is the song that never ends
	#nothing will cause while to evaluate false, resulting in an infinite loop.

#---------------------------------------
#LEARN RUBY - VARIABLE SCOPE AND METHODS
#---------------------------------------

#What does this code print?
	x = "HELLO"
	if true
	  puts x
	end
	# => HELLO
	#variables outside of a conditional can be accessed inside the conditional.

#What does this code print?
	if true
	  y = "Baaaaah"
	end
	puts y
	# => Baaaaah
	#variables defined inside a conditional can be accessed outside of it once the
	#conditional has been run.

#Identify the elements of this code:
	def my_name()
	  return("Zoo Lander")
	end
	#def end open and close the definition of the method
	#my_name is the name of the method, is a symbol
	#() is the argument for the method
	#return explicitly returns an argument to the object that called the method
	#("Zoo Lander") is the argument that will be returned to the caller

#What is the difference between the code in the previous example and this code?
	def my_name
	  "Zoo Lander"
	end
	#This method uses implicit return syntax, vs the explicit syntax used in the above example.
	#This method also uses an implicit empty argument on the method name

#What does the following code print?
	def my_name()
	  return("Zoo Lander")
	end
	puts my_name()
	# => Zoo Lander

#What does the following code return?
	def add(x, y)
	  return(x + y)
	end
	add(3, 5)
	# => 8
	#The method recieved the argument in the same index they are passed, and uses them to 
	#provide meaningful and specific output

#What does the following code print?
	y = 10
	def add_one_to_variable(variable)
	  variable += 1
	  return(variable)
	end
	puts add_one_to_variable(y)
	# => '11'
	#when we puts something, it is literally 'putting it to a s (string)' so the result from
	#putsing hte method call is a string result of 11, rather than the previous example
	#where the output was seen as a fixnum.

#What does the following code print.
	cool = "Beans"
	def dinner_plans()
	  puts cool
	end
	dinner_plans()
	#Here I missed that beans being outside of hte method would cause an Error.
	#the scope of beans does not extend inside the method.

#What does the following code print?
	def blah()
	  my_var = "my_var has been defined"
	end
	puts my_var
	#This raises an error as well, for my_var is local to the method and cannot be 
	#accessed outside of it

#What does the following code print?
	def cray()
	  lyric = "Stuff is cray cray"
	  puts lyric
	end
	cray()
	# => Stuff is cray cray
	#lyric is assigned, then putsed in the same scope.

#What does the following code print?
	def first_name()
  		return("Otto")
	end

	def last_name()
	  return("Mation")
	end

	def full_name()
	  first_name() + " " + last_name()
	end
	puts full_name()
	# => Otto Mation
	#when the first and last name methods are called within the full name method,
	#their return values are concatenated with + into a string that is returned
	#by full_name

#What does the following code print?
	def square_of_number(number)
	  return(number * number)
	end

	def cube_of_number(number)
	  return(number * square_of_number(number))
	end
	puts cube_of_number(2)
	# => 8

#Define a method that multiplies two numbers together.
	def multiplies(x, y)
		return (x*y)
	end

#Define a method called silly_check() that takes a number argument and returns 
#"The number is less than 5" if the argument is less than 5 and "The number is 
#greater than or equal to 5" otherwise.
	def silly_check(number)
		if number < 5
			return ("The number is less than 5")
		else 
			return ("The number is greater than or equal to 5")
		end
	end

#Define a method called funify() that takes an array as an argument and adds 
#the word "fun" to the end of the array.
	def funify(array)
		return (array << "fun")
	end

#Define a method called more_fun() that replaces the first element of an array 
#with the word "FUN FUN".
	def more_fun(array)
		return (array[0] = "FUN FUN")
	end

#Define a method called increment_variable() that takes a variables as an 
#argument and adds one to it.
	def increment_variable(variable)
		return(variable+1)
	end

-------------------------------------------
LEARN RUBY - SYMBOLS, ARRAY METHODS, HASHES
-------------------------------------------

#What does the following code print?
	name = :crank
	puts name.inspect()
	# => ":crank"
	#inspect returns a human readable string containing the class and value of the object 
	#it is called on.

#What does the following code print?
	puts "unicorn".reverse()
	# => "nrocinu"

#What does the following code print?
	puts :unicorn.reverse()
	# => This will raise an error because a symbol is not mutable/ordered like a string
	#or array

#What does this code print?
	["fat", "bat", "rat"].each do |word|
	  puts word + "-land"
	end
	# => "fat-land"
	# => "bat-land"
	# => "rat-land"
	#each iterates over the enumerable, in this case an array, and performs a block on each
	#element, piping it into the block as a variable, defined at the beginning of the block.

#What does this code print?
	counter = 0
	array = ["fat", "bat", "rat"]
	while counter < array.length
	  puts array[counter] + "-land"
	  counter += 1
	end
	# => "fat-land"
	# => "bat-land"
	# => "rat-land"
	#This accomplishes the same thing as the each method, but is much more verbose, as most 
	#of the incrementing handled here is handled within the each method. This goes against 
	#being "DRY"

#What does the following code print?
	array = ["snake", "rat", "cat", "dog"]
	array.each do |animal|
	  puts animal if animal[0] == "s"
	end
	# => "snake"
	#each value in array is iterated over and checked for string equivalency of the first 
	#letter (0 index) and if true, is printed.

#What does the following code return?
	[:a, :b, :c].include?(:a)
	# => true
	#include returns a boolean value (denoted by the ? after the method name) and iterates 
	#over each value in an enumerable, checking for equivalancy between each element and
	#the argument that was passed into the method.

#What does the following code return?
	["roof", "top"].include?("bar") # => false
	#if no equivalency is found between element and argument, false is returned.

#What does the following code return?
	["Too", "Weird", "To", "Live,", "Too", "Rare", "To", "Die"].join(" ")
	# => "Too Weird To Live, Too Rare To Die"
	#join iterates over each element of a collection, concatenating a string argument that 
	#was passed into the method to the end of each element, and adding the next to the previous, 
	#returning one complete string made from the collection.

#What does the following code return?
	["where's", "wallace", "at"].join("***")
	# => "where's***wallace***at"

#What does the following code return?
	[2, 4, 6, 8].map { |number| number ** 2 }
	# => [4, 16, 36, 64] 
	#map iterates over the collection and returns a new array of values passed through the 
	#provided block.

#What does the following code return?
	[2, 4, 6, 8].map do |number|
  		number ** 2
	end
	#The same as the above example, the block is simply expressed as a multiline block vs 
	#the previous inline block.

#A hash is collection of key/value pairs and is a fundamental data structure in Ruby (arrays 
#are also a fundamental Ruby data structure). This is an example of a hash that summarizes 
#the Warty Newt.
	warty_newt = { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }
#Identify the components of the warty_newt hash.
	#warty_newt is the variable assigned to the hash
	#= is the assignment operator pointing warty_newt to the hash
	#{} creates a new hash
	#"type" is a key
	# => is a hash rocket which assigns the key to the following value
	#"Amphibian" is the value assigned to the key "type"
	#, starts the next key/value pair assignment.

#What does the following code return?
	warty_newt = { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }
	warty_newt["type"]
	# => "Amphibian"

#What does the following code return?
	warty_newt = {"type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years"}
	warty_newt["weight"] = "0.3 ounces"
	puts warty_newt
	#We define the key with [] (as an index?) then assign its value with =

#Create a hash for a snowy_owl, a bird that is a carnivore and has a life span of 10 years.
	snowy_owl = {}
	snowy_owl["type"] = "Bird"
	snowy_owl["diet"] = "Carnivore"
	snowy_owl["life_span"] = "10 years"
	puts snowy_owl
	# => {"type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years"}

#What does the following code return?
	snowy_owl.keys()
	# => type
	# => diet
	# => life_span
	snowy_owl.values()
	# => Bird
	# => Carnivore
	# => 10 years

#What does the following code return?
	snowy_owl = {
	  "type"=>"Bird",
	  "diet"=>"Carnivore",
	  "life_span"=>"10 years"
	}
	snowy_owl.select do |key, value|
	  key == "type"
	end
	# => {"type"=>"Bird"}
	#select returns an enumerable containing the element(key/value pair in this case) that
	#evaluates true in the provided block.

#Make a hash that is similar to the snowy_owl hash, but make all of the keys symbols.
	snowy_owl = { :type=>"Bird", :diet=>"Carnivore", :life_span=>"10 years" }

#Iterate through first_names and populate result with the first_names and last name 
#(result should be ["Hamburglar McDonald", "Grimace McDonald", "Ronald McDonald"] after
#the iteration).
	result = []
	first_names = ["Hamburglar", "Grimace", "Ronald"]
	last_name = "McDonald"
	first_names.each do |first_name|
		result << (first_name +" "+ last_name)
	end
	# => Be sure to remember to add the space when doing string concatenation vs interpolation!

#Iterate through personality_types and construct this array:
# => ["bad person", "good person", "great person"]
	#bad example: for mutating -EVERY OBJECT IN A COLLECTION THE SAME WAY- map is less verbose.
	personality_types = ["bad", "good", "great"]
	people = []
	personality_types.each do |type|
		people << type + " person"
	end
	puts people
	#good example
	personality_types.map {|type| type + " person"}

#Convert ["waters", "too", "polluted", "with", "germs"] to "waters too polluted with germs".
	["waters", "too", "polluted", "with", "germs"].join(" ")


#Return the value corresponding to the key :sport in the lebron hash.
	lebron = {:sport => "basketball", :birthplace => "Akron"}
	lebron[:sport]

#Add the :high_school key to the lebron hash with the value "St. Vincent-St. Mary High School".
	lebron[:high_school] = "St. Vincent-St. Mary High School"

#Return an array of all the keys in the lebron hash
	lebron.keys
	#keys returns a new array populated with the keys from the hash it is called on. 
	#values works identically with the values.

#---------------------------------------------
#LEARN RUBY - ITERATION NESTED DATA STRUCTURES
#---------------------------------------------

#What does the folowing code return?
	:id.instance_of?(Symbol)
	# => true
	#instance of returns true if the object is an instnace of the class provided as an argument.

#Iterate over every element of the weird_array and add the element to the result array if the 
#element is a Symbol
	result = []
	weird_array = ["blah", :meow, 42, 90, :building]
	weird_array.each do |weirdness|
		if weirdness.instance_of?(Symbol)
			result<<weirdness
		end
	end
	puts result

#Iterate over hte sportts Array and print out the items with their index.
	sports = ["basketball", "baseball", "football"]
		sports.each_with_index do |sport, index|
			puts "#{index}. #{sport}"
		end

#Iterate over last_names and create this array: ["Paul D", "Paul Krugman"]
	last_names = ["D", "Krugman"]
	last_names.map do |name|
		#name = "paul "+name #my original answer, showing my unappreciativeness for the 
							 #appropriate application of the map method.
		"Paul "+ name
	end

#Return true if any of the elements in the soap_opera array start with the letter "a" and false 
#otherwise
	soap_opera = ["all", "my", "children"]
		soap_opera.any? do |word|
			word[0] == "a"
		end
		#the any? method iterates ove the collection returning true or false for each element
		#evaluated in the block.

#Return true if every element of the tools array starts with an "r" and false otherwise.
	tools = ["ruby", "rspec", "rails"]
	tools.all? do |tool|
		tool[0] == 'r'
	end # => true
	#all? only returns true if every element in the collection evaluates as true.

#Return true if the string "stimpy" contains the letter "s" and false otherwise.
	"stimpy".include?("s")
	#include searches an enumerable to see if it == the object passed to the method.
	#so strings are enumerables? I guess they would be considering they are collections of
	#characters.

#Create a new array from the captain_planet array with all the elements that contain the 
#letter "a"
	captain_planet = ["earth", "fire", "wind", "water", "heart"]
	captain_planet.select do |element|
		element.include?("a")
	end
	#The difference between map and select is that map returns the block without discrection,
	#select returns elements that evaluate true in the block. very similar in that they both
	#create new arrays with their block returns, but very different in that one is a simple 
	#iterator, and the other has a conditional return built in.

#Identify the first element in the stuff array that begins with the letters "wa".
	stuff = ["candy", :pepper, "wall", :ball, "wacky"]
	stuff.find do |word|
		word[0..1] == "wa"
	end
	#find is a method that evaluates each element against a condition and returns the first
	#true value.

#Identify all the elements in the stuff array that begins with the letters "wa".
	stuff.find_all do |word|
		word[0..1] ==  "wa"
	end
	#or 
	stuff.select do |word|
		word[0..1] == "wa"
	end
	#both of these methods are returning values if they are true and they are both enumerating
	#over the whole collection, so either would work.

#Create the array [:c, :b, :a] from the abcs array.
	abcs = [:a, :b, :c]
	abcs.reverse

#The people array is an array of two arrays (this is also called a nested array).
#Get the first element of the people array.
	people = [["Lebron", "cool dude"], ["Bieber", "jerk face"]]

	people[0]

#Get the "cool dude" string from the people array.
	people[0][1]

#Show two ways to concatenate x and y to form the sentence: "the cat and the hat"
	x = "cat"
	y = "hat"
	book = "The #{x} in the #{y}"
	book2 = "The "+x+" in the "+y

#Iterate through the people array and print the following sentences: Lebron is a 
#cool dude Bieber is a jerk face
	people.each do |name, status|
		puts "#{name} is a #{status}"
	end

#Create an array of all students with test scores greater than 80. The result 
#should be [["jon", 99], ["bill", 85]].
	test_scores = [["jon", 99], ["sally", 65], ["bill", 85]]

	test_scores.select do |student, score|
		score > 80
	end

#Get the first person from the ages array that is 77 years old. The result 
#should be [:sue, 77]
	ages = [[:frank, 42], [:sue, 77], [:granny, 77]]

	ages.find do |name, age|
		age == 77
	end

#Return the moons of :mars as a single string separated by a comma. 
#Result should be "deimos, phobos".
	planets = {
		:earth => [:luna], 
		:mars => [:deimos, :phobos], 
		:jupiter => [:callisto, :io, :europa]
	}

	p planets[:mars].join(,)

#Return the number of home_runs that Babe Ruth hit in his career.
	baseball_players = {
		:babe_ruth => {:hits => 2873, :home_runs => 714, :obp => 474}, 
		:barry_bonds => {:hits => 2935, :home_runs => 762, :obp => 444}
	}

	baseball_players[:babe_ruth][:home_runs]

#The baseball_players_array has the same information as the hash in the previous questions. 
#Return the number of home runs that Babe Ruth hit in his career. Result should be 714.
	baseball_players_array = [[:babe_ruth, [2873, 714, 474]], [:barry_bonds, [2935, 762, 444]]]
	baseball_players_array[0][1][1]

#Describe the data structure of the economists variable. Get the name of the first element 
#in the economists array (result should be "krugman").
	economists = [
		{:name => "krugman", :specialty => "international macro"}, 
		{:name => "mankiw", :specialty => "pigovian taxation"}
	]

	#economists is the variable name for the heterogenous array
	#= is the assignment operator
	#the array is populated by two hashes

++END++













