import UIKit

//https://leetcode-cn.com/problems/binary-search/
// 00 时间复杂度：O(logN)，空间复杂度：O(1)
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1, pivot = 0
        
        while left <= right {
            pivot = left + (right - left) / 2
            if nums[pivot] == target {
                return pivot
            }else if target < nums[pivot] {
                right = pivot - 1
            }else {
                left = pivot + 1
            }
        }
        return -1
    }
}

//if nums.contains(target) {
//    return nums.firstIndex(of: target)!
//
//}else {
//    return -1
//}
