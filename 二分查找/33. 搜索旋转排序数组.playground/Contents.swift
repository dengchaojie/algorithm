import UIKit

//https://leetcode-cn.com/problems/search-in-rotated-sorted-array/
//40
/*
 分析和算法：找到旋转点
 参考提示：二分查找
 */
//let arr = [1,3]
//let temp = Array(arr[1...])

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return -1
        }
        if nums.count == 1 {
            if nums[0] == target {
                return 0
            }else {
                return -1
            }
        }
        var current = 0
        for i in 0..<nums.count {
            if nums[i] < nums[current] {
                current = i
                break
            }else {
                current = i
            }
        }
        if target == nums[0] {
            return 0
        }else if target == nums.last! {
            return nums.count - 1
        }
        var result = 0
        if target < nums[0] {
            // 目标落在了右边的区间
            let temp = Array(nums[current...])
            result = isHavedItem(temp, target)
            return result == -1 ? -1 : (result + current)
        }else if target > nums.last! {
            // 目标坐在了左边的区间
            let temp = Array(nums[0..<current])
            result = isHavedItem(temp, target)
            return result == -1 ? -1 : result
        }else {
            result = isHavedItem(nums, target)
            return result == -1 ? -1 : result
        }

    }
    
    func isHavedItem(_ nums: [Int], _ item: Int) -> Int {
        for i in 0..<nums.count {
            if nums[i] == item {
                return i
            }else if nums [i] > item{
                break
            }
        }
        return -1
    }
    
    func search2(_ nums: [Int], _ target: Int) -> Int {
        if let index = nums.firstIndex(of: target) {
            return index
        }else {
            return -1
        }
    }
    
    //二分查找
    func search3(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        while left < right {
            let mid = (right - left) / 2 + left
            if nums[mid] == target {
                return mid
            }
            if nums[mid] >= nums[left] {
                // 左区间有序
                if nums[mid] > target && target >= nums[left] {
                    right = mid - 1
                }else {
                    left = mid + 1
                }
            }else {
               // 右区间有序
                if nums[mid] < target && target <= nums[right] {
                    left = mid + 1

                }else {
                    right = mid - 1

                }
            }
            
        }
        return -1
    }
}
let obj = Solution()
obj.search([4,5,6,7,0,1,2], 0)
obj.search([4,5,6,7,0,1,2], 3)
obj.search([1,3], 0)

//class Solution {
//    func search(_ nums: [Int], _ target: Int) -> Int {
//        if nums.count == 0 {
//            return -1
//        }
//        if nums.count == 1 {
//            if nums[0] == target {
//                return 0
//            }else {
//                return -1
//            }
//        }
//        var left = nums.count / 2 - 1, right = left
//        var result = 0
//        while left >= 0 && right < nums.count {
//
//        }
//        return result
//    }
//}
