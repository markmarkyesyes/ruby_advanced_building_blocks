def bubble_sort_by(array)
	counter = 0
	
		while counter < array.length do
			array.map.with_index do |input, index|
				if array[index+1] == nil
				elsif yield(array[index], array[index+1]) > 0
					array.insert(index, array.delete_at(index+1))
				end
				
				counter +=1
			end
		end
	puts array
end

	


bubble_sort_by(["hi","hello","hey"]) do |left, right|
	left.length - right.length
end

