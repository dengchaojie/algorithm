import UIKit

//https://leetcode-cn.com/problems/missing-number/
// 14 03 --13
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        return nums.count * (nums.count + 1) / 2 - nums.reduce(0, +)
    }
}
//class Solution {
//    func missingNumber(_ nums: [Int]) -> Int {
//
//        let n = nums.count
//        if !nums.contains(n) {
//            return n
//        }
//        var nums = nums
//        nums.append(-n)
//        for i in 0..<n {
//            let index = abs(nums[i])
//            if nums[index] > 0 {
//                nums[index] = -nums[index]
//            }
//        }
//        if !nums.contains(0) {
//            return 0
//        }
//        for i in 0..<n {
//            if nums[i] > 0 {
//                return i
//            }
//        }
//
//        return 0
//    }
//}


let obj = Solution()
obj.missingNumber([9,6,4,2,3,5,7,0,1])
obj.missingNumber([3,0,1])
obj.missingNumber([0])

//3 * 4 / 2 = 6
