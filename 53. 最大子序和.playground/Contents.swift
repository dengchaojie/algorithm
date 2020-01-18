import UIKit

//https://leetcode-cn.com/problems/maximum-subarray/
// 56
// guan zhu zheng shu huozhe fu shu
// 数组 分治 动态规划
/**
* Question Link: https://leetcode.com/problems/maximum-subarray/
* Primary idea: Dynamic Programming, each character should be either with previous sequence or
*                 start a new sequence as the maximum one
* Time Complexity: O(n), Space Complexity: O(1)
 动态规划
*/
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var max_current = nums[0]
        var max_global = nums[0]
        
        for index in 1..<nums.count {
            // 遍历到当前元素，加上当前的最大值，和自身比较，取最大值做为新的当前最大值
            max_current = max(max_current + nums[index], nums[index])
            // 当前最大值和遍历到现在的最大值，在取最大值作为新的全局最大值
            max_global = max(max_current, max_global)
        }
        
        return max_global
        
    }
}



//如果你已经实现复杂度为 O(n) 的解法，尝试使用更为精妙的分治法求解。






//2 -1 3 -4
//
//temp = 2// 如果temp大于0，temp被赋值为temp和当前值的和（会增大当前值）；否则，temp被赋值成当前值（如果做加法，相当于会减少当前值，所以不做加法）
//maxV = 2// 如果当前值不大于0，那么最大值为之前和
//ls = 0// 遍历到当前值，和或者当前值本身，再赋值给temp
//
//di yi ci xun huan
//num = -1
//ls = 1
//maxV = 2
//temp = 1
//
//di er ci
//num = 3
//ls = 4
//temp = 4
//maxV = 2
//
//di san ci
//num = -4
//ls = 0
//maxV = 4
//temp = 0
//
//maxV = 4

