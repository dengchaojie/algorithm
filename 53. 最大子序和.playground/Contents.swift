import UIKit

//https://leetcode-cn.com/problems/maximum-subarray/
// 07
// guan zhu zheng shu huozhe fu shu

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        let numsSorted = nums.sorted()
        let max = numsSorted.last!
        var sum = 0
        
        return sum
        
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

