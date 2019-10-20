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

