import UIKit

//https://leetcode-cn.com/problems/longest-continuous-increasing-subsequence/
// 46

class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        if nums.count == 1 {
            return 1
        }
        var currentLen = 1
        var maxLen = 1
        for index in 1..<nums.count {
            if nums[index] > nums[index - 1] {
                currentLen += 1
            }else {
                if currentLen > maxLen {
                    maxLen = currentLen
                }
                currentLen = 1
            }
        }
        if currentLen > maxLen {
            maxLen = currentLen
        }
        return maxLen
    }
}

let obj = Solution()
//obj.findLengthOfLCIS([1,3,5,4,7])
//obj.findLengthOfLCIS([2,2,2,2,2])
obj.findLengthOfLCIS([4,3,2,1,0])


