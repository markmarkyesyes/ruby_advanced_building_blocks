def bubble_sort(input)
	array = input.split(",")
	until array == array.sort 
		array.map.with_index do |number, index|
			unless array[index+1].to_i==0
				if array[index].to_i>array[index+1].to_i
					array.insert(index, array.delete_at(index+1))
				end
			end
		end
	end

	puts array
end


bubble_sort(gets)

