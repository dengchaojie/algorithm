import UIKit

//https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/


/*
 42
 思路
 */
//class Solution {
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//
//
//
//    }
//}
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLen = 0, startIdx = 0, charToPos = [Character: Int]()
        let sChars = Array(s)
        
        for (i, char) in sChars.enumerated() {
            print(char)
            // 取出来这个字符的最新位置，如果有值，
            if let pos = charToPos[char] {
                //
                startIdx = max(startIdx, pos)
                print("startIdx\(startIdx)")
            }
            
            // update to next valid position
            // 这个字典里存储某个字符的最新位置加1
            charToPos[char] = i + 1
            //
            maxLen = max(maxLen, i - startIdx + 1)
            print("maxLen\(maxLen)")
            print("--------")

        }
        
        return maxLen
    }
}

let obj = Solution()
obj.lengthOfLongestSubstring("pwwkew")


/**
* Question Link: https://leetcode.com/problems/longest-substring-without-repeating-characters/
* Primary idea: Use a dictionary to hold the next possible valid position of characters of the non-repeating substring,
*               and then iterate the string to update maxLen, dictionary, and startIdx encountering duplicates
*
* Note: Swift does not have a way to access a character in a string with O(1),
*       thus we have to first transfer the string to a character array
* Time Complexity: O(n), Space Complexity: O(n)
*
*/
