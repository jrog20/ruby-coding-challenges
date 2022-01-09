// The problem: Write a function to detect a substring in a string
// If the substring can be found in the string, return the index at which it starts. Otherwise, return -1.

function detectSubstring(str, subStr) {
    let idxOfStart = 0,
      j = 0;
  
    for (i = 0; i < str.length; i++) {
      // if match, compare next character of subStr with next of string
      if (str[i] == subStr[j]) {
        j++;
              if (j == subStr.length) {
            return i - (subStr.length - 1);
        }
      } else {
        i -= j;
        j = 0;
      }
    }
  
    return -1;
  }

if (require.main === module) {

console.log("Expecting: 0");
console.log(detectSubstring("category", "cat"));

}

module.exports = detectSubstring;
