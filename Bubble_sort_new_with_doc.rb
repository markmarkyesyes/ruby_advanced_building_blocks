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
p bubble_sort([4,3,78,2,0,2,55,3,22,4])


