// Given an array, find the average of all subarrays of ‘k’ contiguous elements in it.

// Brute force solution - If k = 5, this function will calculate the sum of every 
// 5-element subarray of the given array and divide the sum by ‘5’ to find the average. 

function findAveragesOfSubarrays(arr, k) {
    const result = [];
    for (let i = 0; i < arr.length - k + 1; i++) {
      // find sum of next 'k' elements
      sum = 0.0;
      for (let j = i; j < i + k; j++) {
        sum += arr[j];
      }
      result.push(sum / k); // calculate average
    }
  
    return result;
  }
  
  const result = findAveragesOfSubarrays([1, 3, 2, 6, -1, 4, 1, 8, 2], 5);
  console.log("Expect averages of subarrays of size k: 2.2,2.8,2.4,3.6,2.8");
  console.log(`Averages of subarrays of size k: ${result}`);

// Sliding Window approach:
// The efficient way to solve this problem would be to visualize each subarray as a 
// sliding window of ‘5’ elements. This means that we will slide the window by one 
// element when we move on to the next subarray. To reuse the sum from the previous 
// subarray, we will subtract the element going out of the window and add the element 
// now being included in the sliding window. This will save us from going through the 
// whole subarray to find the sum and, as a result, the algorithm complexity will 
// reduce from O(n*k) to O(n).

function findAveragesOfSubarrays(arr, k) {
    const result = [];
    let windowSum = 0.0,
      windowStart = 0;
    for (let windowEnd = 0; windowEnd < arr.length; windowEnd++) {
      windowSum += arr[windowEnd]; // add the next element
      // slide the window, we don't need to slide if we've not hit the required window size of 'k'
      if (windowEnd >= k - 1) {
        result.push(windowSum / k); // calculate the average
        windowSum -= arr[windowStart]; // subtract the element going out
        windowStart += 1; // slide the window ahead
      }
    }
  
    return result;
  }
  
  const result = findAveragesOfSubarrays([1, 3, 2, 6, -1, 4, 1, 8, 2], 5);
  console.log("Expect averages of subarrays of size k: 2.2,2.8,2.4,3.6,2.8");
  console.log(`Averages of subarrays of size k: ${result}`);
