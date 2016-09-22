#Project 1: Bubble Sort

#Sorting algorithms are some of the earliest that you typically get exposed to in 
#Computer Science. It may not be immediately obvious how important they are, 
#but it shouldn't be hard to think of some examples where your computer needs to sort 
#some massive datasets during everyday operations.

#One of the simpler (but more processor-intensive) ways of sorting a group of items 
#in an array is bubble sort, where each element is compared to the one next to it 
#and they are swapped if the one on the left is larger than the one on the right. 
#This continues until the array is eventually sorted.

#Your Task
#Build a method #bubble_sort that takes an array and returns a sorted array. 
#It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn't it?).

#my theory is to recurse through the array committing one swap per iteration,
#until the array returned at the end is the same as the array passed at the beginning

#what I ended up doing was external enumeration in place of the recursion.

def bubble_sort(array)
	counter = 0 
	until counter == (array.size-1) 
		array.each_with_index do |a, index|
			b = array[index+1]
			unless b == nil
					if a > b
						array[index], array[index+1] = array[index+1], array[index]		
				end
			end
		end
		counter += 1 # => increments until loop index var
	end
	return array
end



#Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. 
#The block should take two arguments which represent the two elements currently being compared.
# Expect that the block's return will be similar to the spaceship operator you learned about 
#before -- if the result of the block is negative, the element on the left is "smaller" than 
#the element on the right. 0 means they are equal. A positive result means the left element is
# greater. Use this to sort your array.


def bubble_sort_by(array)
	if block_given?
		counter = 0 
		until counter == (array.size-1)
			array.each_with_index do |a, index|
     			b = array[index+1]
     			unless b == nil
     				if yield(a,b) > 0
     					array[index], array[index+1] = array[index+1], array[index]
     				end
     			end
     		end
     		counter += 1
     	end
	else
		bubble_sort(array)
	end
end

bubble_sort_by(["hi","hello","hey", "jimmy"]) do |left,right|
       right.length <=> left.length
     end

#This one took a bit of looking into, but it seems that if you are not doing tuples sort, this is simply a matter
# of mathematically comparing the iterated values in the block, then seeing if that is
#greater than 0, denoting a swap. 
#not a true schwartzian transform.





     	








