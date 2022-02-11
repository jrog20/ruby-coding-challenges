def cycle_sort(array)
    # initiate variables to count the number of swaps and where we begin interating the array
    swaps = 0
    cycle_start = 0

    # Loop through the entire array, starting at the first index
    while cycle_start < array.length - 1
        # Store the value of the current element
        number_to_swap = array[cycle_start]
        # Set the position to our cycle start
        position = cycle_start

        # Find the correct index for the current number to swap by comparing it's value to 
        # the values of every other value in the array and incrementing the index by one for
        # each value that is less than the current number to swap
        i = cycle_start + 1
        while i < array.length
            if array[i] < number_to_swap
                position += 1
            end
            i += 1
        end

        # If the number to swap is not in the correct position, put it in the correct 
        # position, after any duplicates
        if position != cycle_start
            while number_to_swap == array[position]
                position += 1
            end

            array[position], number_to_swap = number_to_swap, array[position]
            swaps += 1
        end

        # Rotate the rest of the cycle
        while position != cycle_start
            # Find where to put the number to swap
            position = cycle_start

            j = cycle_start + 1
            while j < array.length - 1
                if array[j] < number_to_swap
                    position += 1
                end
                # Put the number to swap there, or after any duplicates
                while number_to_swap == array[position]
                    position += 1
                end

                j += 1
            end

            array[position], number_to_swap = number_to_swap, array[position]
            swaps += 1
        end

        cycle_start += 1
    end
    return array, swaps
end

if __FILE__ == $PROGRAM_NAME
    puts "Expecting sorted array = [3, 15, 15, 17, 81, 200, 1000]"
    puts "Total number of swaps = 7"
    puts cycle_sort([1000, 200, 17, 3, 15, 81, 15])
end
