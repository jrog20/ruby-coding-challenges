// Given an array, find the average of all subarrays of ‘K’ contiguous elements in it.


// Brute force solution - will calculate the sum of every 5-element subarray of the 
// given array and divide the sum by ‘5’ to find the average. 

function find_averages_of_subarrays(K, arr) {
    const result = [];
    for (let i = 0; i < arr.length - K + 1; i++) {
      // find sum of next 'K' elements
      sum = 0.0;
      for (let j = i; j < i + K; j++) {
        sum += arr[j];
      }
      result.push(sum / K); // calculate average
    }
  
    return result;
  }
  
  const result = find_averages_of_subarrays(5, [1, 3, 2, 6, -1, 4, 1, 8, 2]);
  console.log(`Averages of subarrays of size K: ${result}`);

// Sliding Window approach:
// The efficient way to solve this problem would be to visualize each subarray as a 
// sliding window of ‘5’ elements. This means that we will slide the window by one 
// element when we move on to the next subarray. To reuse the sum from the previous 
// subarray, we will subtract the element going out of the window and add the element 
// now being included in the sliding window. This will save us from going through the 
// whole subarray to find the sum and, as a result, the algorithm complexity will 
// reduce from O(N*K) to O(N).

function find_averages_of_subarrays(K, arr) {
    const result = [];
    let windowSum = 0.0,
      windowStart = 0;
    for (let windowEnd = 0; windowEnd < arr.length; windowEnd++) {
      windowSum += arr[windowEnd]; // add the next element
      // slide the window, we don't need to slide if we've not hit the required window size of 'k'
      if (windowEnd >= K - 1) {
        result.push(windowSum / K); // calculate the average
        windowSum -= arr[windowStart]; // subtract the element going out
        windowStart += 1; // slide the window ahead
      }
    }
  
    return result;
  }
  
  const result = find_averages_of_subarrays(5, [1, 3, 2, 6, -1, 4, 1, 8, 2]);
  console.log(`Averages of subarrays of size K: ${result}`);
