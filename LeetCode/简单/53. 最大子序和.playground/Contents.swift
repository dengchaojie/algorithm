import UIKit
// 59
var str = "Hello, playground"


//如果你已经实现复杂度为 O(n) 的解法，尝试使用更为精妙的分治法求解。


class Solution {
    // 1 贪心算法
    // 每一步都选择最佳方案，到最后就是全局最优的方案
    func maxSubArray(_ nums: [Int]) -> Int {
        var max_sum = nums[0]
        var max_globle = nums[0]
        for i in 1..<nums.count {
            max_sum = max(max_sum+nums[i], nums[i])
            max_globle = max(max_globle, max_sum)
        }
        return max_globle
    }
    // 2 分治法模板
    // 将问题分解成子问题，并递归的解决它们
    // 在合并子问题的结果，以获取原始问题的解
    // 最大和，要么在左数组产生，要么在右数组产生，要么在整体数组产生
    func maxSubArray2(_ nums: [Int]) -> Int {
        return _helper(nums, 0, nums.count-1)
    }
    
    func _helper(_ nums: [Int], _ left: Int, _ right: Int) -> Int {
        if left == right {
            return nums[left]
        }
        let p = (left + right)/2
        let maxLeft = _helper(nums, left, p)
        let maxRight = _helper(nums, p+1, right)
        let maxCross = maxCrossArray(nums, p, left, right)
        return max(max(maxLeft, maxRight), maxCross)
    }
    
    func maxCrossArray(_ nums: [Int], _ p: Int, _ left: Int, _ right: Int) -> Int {
        if left == right {
            return nums[left]
        }
        var maxLeft = Int.min
        var sumLeft = 0
        for i in (left...p).reversed() {
            sumLeft += nums[i]
            maxLeft = max(maxLeft, sumLeft)
        }
        var maxRight = Int.min
        var sumRight = 0
        for i in (p+1)...right {
            sumRight += nums[i]
            maxRight = max(maxRight, sumRight)
        }
        
        return maxLeft + maxRight
    }
    //动态规划
    // 原地修改数组
    func maxSubArray3(_ nums: [Int]) -> Int {
        var nums = nums
        var max_sum = nums[0]
        for i in 1..<nums.count {
            if nums[i-1] > 0 {
                nums[i] += nums[i-1]
            }
            max_sum = max(max_sum, nums[i])
        }
        return max_sum
    }
    
    
    
}

let obj = Solution()
obj.maxSubArray2([-2,1,-3,4,-1,2,1,-5,4])


/*


 方法一：分治法

 这个是使用分治法解决问题的典型的例子，并且可以用与合并排序相似的算法求解。下面是用分治法解决问题的模板：

 定义基本情况。
 将问题分解为子问题并递归地解决它们。
 合并子问题的解以获得原始问题的解。
 算法：
 当最大子数组有 n 个数字时：

 若 n==1，返回此元素。
 left_sum 为最大子数组前 n/2 个元素，在索引为 (left + right) / 2 的元素属于左子数组。
 right_sum 为最大子数组的右子数组，为最后 n/2 的元素。
 cross_sum 是包含左右子数组且含索引 (left + right) / 2 的最大值。

 作者：LeetCode
 链接：https://leetcode-cn.com/problems/maximum-subarray/solution/zui-da-zi-xu-he-by-leetcode/
 来源：力扣（LeetCode）
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 
 */
