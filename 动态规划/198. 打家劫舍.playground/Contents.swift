import UIKit

//https://leetcode-cn.com/problems/house-robber/
// 00 动态规划
//
class Solution {
    func rob(_ nums: [Int]) -> Int {
        var curr = 0, prev = 0
        
        for item in nums {
            // 到当前，在curr和prev+item取最大值，给curr
            // 怎么确保没有触发警报的？
            (curr, prev) = (max(curr, prev + item), curr)
        }
        return curr
        
    }
}
