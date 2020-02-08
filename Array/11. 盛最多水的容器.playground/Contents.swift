import UIKit

//https://leetcode-cn.com/problems/container-with-most-water/
// 15
/*
 分析和算法：转化成distance*min的最大值
 写完之后检查
 参考提示：双指针
 */
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        if height.count == 2 {
            
            return min(height[0], height[1])
        }
        var result = 0
        var left = 0, right = height.count - 1
        while left < right {
            let temp = min(height[left], height[right]) * (right - left)
            result = max(result, temp)
            if height[left] < height[right] {
                left += 1
            }else {
                right -= 1
            }
        }
        
        return result
        
    }
}

let obj = Solution()
obj.maxArea([1,8,6,2,5,4,8,3,7])


