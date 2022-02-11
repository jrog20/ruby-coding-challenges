Cyclic Sort

From Geeks for Geeks: 
Cycle sort is an in-place sorting Algorithm, unstable sorting algorithm, a comparison sort that is theoretically optimal in terms of the total number of writes to the original array. 

From Hackernoon - 14 Patterns to Ace any Coding Interview:
This pattern describes an interesting approach to deal with problems involving arrays containing numbers in a given range. 

HOW IT WORKS:
The Cyclic Sort pattern iterates over the array one number at a time, and if the current number you are iterating is not at the correct index, you swap it with the number at its correct index. 

You could try placing the number in its correct index, but this will produce a complexity of O(n^2) which is not optimal, hence the Cyclic Sort pattern.

How do I identify this pattern?

- They will be problems involving a sorted array with numbers in a given range
- If the problem asks you to find the missing/duplicate/smallest number in an sorted/rotated array

Problems featuring cyclic sort pattern:

- Find the Missing Number (easy)
- Find the Smallest Missing Positive Number (medium)

# https://dev.to/mwong068/cycle-sort-in-ruby-5eda
# https://www.youtube.com/watch?v=0eFq2YSueeA&t=872s
