

//https://leetcode-cn.com/problems/find-the-duplicate-number/
// 0 1 2 3 4 5 6 7 8 9
//[2,5,9,6,9,3,8,9,7,1]
// t 7 h 7
// p 9  q 9

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var tortoise = nums[0]
        var hare = tortoise
        repeat {
            tortoise = nums[tortoise]
            hare = nums[nums[hare]]
        } while tortoise != hare
        var p = nums[0]
        var q = tortoise
        while p != q {
            p = nums[p]
            q = nums[q]
        }
    
        return p
    }
    
    func findDuplicate2(_ nums: [Int]) -> Int {
        //找到重复的数字
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if j == i {
                    
                }else {
                    if nums[i] == nums[j] {
                        return nums[i]
                    }
                }
            }
        }
        fatalError()
    }
}
// 个数为x，那么最大的值是x-1，最小的值是1

//
//for i in 0..<nums.count {
//    if i != nums.count-1 {
//        if nums.contains(i+1) {
//
//        }else {
//
//        }
//
//    }else {
//
//    }
//}
