import UIKit


//https://leetcode-cn.com/problems/3sum-closest/

// 排序，变成2数的和，计算差值越小越好
class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {

        var nums = nums
        nums.sort()
        
        var minDiff = Int.max
        //遍历次数
        for i in 0..<nums.count - 2 {
            let twoSum = target - nums[i]
            var left = i + 1
            var right = nums.count - 1
            while left < right {
                let diff = nums[left] + nums[right] - twoSum
                if abs(diff) < abs(minDiff) {
                    minDiff = diff
                }
                if diff == 0 {
                    return target
                }else if diff > 0 {
                    repeat {
                        right -= 1
                        
                    }while left < right && nums[right] == nums[right+1]
                }else {
                    repeat {
                        left += 1
                    }while left < right && nums[left] == nums[left-1]
                }
            }
        }
        return target+minDiff
        
    }
}

let obj = Solution()
obj.threeSumClosest([-1,0,1,1,55], 3)
