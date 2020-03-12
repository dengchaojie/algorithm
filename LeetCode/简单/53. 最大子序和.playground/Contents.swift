import UIKit
// 59
var str = "Hello, playground"


//如果你已经实现复杂度为 O(n) 的解法，尝试使用更为精妙的分治法求解。

// tan xin suan fa
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var max_sum = nums[0]
        var max_globle = nums[0]
        for i in 1..<nums.count {
            max_sum = max(max_sum+nums[i], nums[i])
            max_globle = max(max_globle, max_sum)
        }
        return max_globle
    }
}
