import UIKit

//https://leetcode-cn.com/problems/find-all-numbers-disappeared-in-an-array/


class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        // 根据index，把数组的元素取反，
        // 大于0的位置就是缺少的数字
        var nums = nums
        var result = [Int]()
        for i in 0..<nums.count {
            // 要去绝对值，因为这个值可能已经被取反了，所以取绝对值能取到原来的值
            let index = abs(nums[i]) - 1
            if nums[index] > 0 {
                nums[index] = -nums[index]
            }
        }
        for i in 0..<nums.count {
            if nums[i] > 0 {
                result.append(i+1)
            }
        }
        return result
        
        
//        var mutArr = [Int]()
//        for i in 1...nums.count {
//            if nums.contains(i) == false {
//                mutArr.append(i)
//            }
//        }
//        return mutArr

    }
}



