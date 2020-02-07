import UIKit

//https://leetcode-cn.com/problems/3sum/
// 思路：数组排序，从左遍历，看下当前元素后面数组中，用左右指针判断三者加在一起等于0，
// 加入最后的数组，在遍历，去除重复的元素，继续二层遍历，看看还有没有其他满足等于0
// 如果当前元素大于0，直接返回结果
// 知识点：while left < 10 { left += 1 }，是先判断条件，在执行。
// 而repeat { left += 1 } while left < 10，是先执行，在判断条件。
//var left = 10
//while left < 10 {
//    left += 1
//    print("a")
//}
//repeat {
//    left += 1
//    print("b")
//} while left < 10

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 {
            return [[Int]]()
        }
        if nums.count == 3 {
            if nums[0] + nums[1] + nums[2] == 0 {
                return [nums]
            }else {
                return [[Int]]()
            }
        }
        var res = [[Int]]()
        let nums = nums.sorted()
        for i in 0..<nums.count {
            if nums[i] > 0 {
                return res
            }
            if i > 0 && nums[i] == nums[i-1] {
                continue
            }
            var left = i + 1, right = nums.count - 1
            while left < right {
                if nums[i] + nums[left] + nums[right] == 0 {
                    res.append([nums[i], nums[left], nums[right]])
                    while left < right && nums[left] == nums[left + 1] {
                        left += 1
                    }
                    while left < right && nums[right] == nums[right - 1] {
                        right -= 1
                    }
                    left += 1
                    right -= 1
                }else if nums[i] + nums[left] + nums[right] > 0 {
                    right -= 1
                }else {
                    left += 1
                }
            }
            
        }
        
        return res
    }
    
    func threeSum2(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        
        guard nums.count >= 3 else {
            return res
        }
        
        let nums = nums.sorted()
        
        for i in 0..<nums.count - 2 {
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }
            
            let firstNum = nums[i], remainingSum = -firstNum
            var m = i + 1, n = nums.count - 1
            
            while m < n {
                if nums[m] + nums[n] == remainingSum {
                    res.append([firstNum, nums[m], nums[n]])
                    
                    repeat {
                        m += 1
                    } while nums[m] == nums[m - 1] && m < n
                    
                    repeat {
                        n -= 1
                    } while nums[n] == nums[n + 1] && m < n
                } else if nums[m] + nums[n] < remainingSum {
                    m += 1
                } else {
                    n -= 1
                }
            }
        }
        
        return res
    }
}
let obj = Solution()
obj.threeSum2([-1, 0, 1, 2, -1, -4])

// 想想双指针？
//class Solution {
//    func threeSum(_ nums: [Int]) -> [[Int]] {
//        if nums.count < 3 {
//            return [[Int]]()
//        }
//        if nums.count == 3 {
//            if nums[0] + nums[1] + nums[2] == 0 {
//                return [nums]
//            }else {
//                return [[Int]]()
//            }
//        }
//        var big = [Int]()
//        var little = [Int]()
//        var zeros = [Int]()
//        for item in nums {
//            if item > 0 {
//                big.append(item)
//            }else if item < 0 {
//                little.append(item)
//            }else {
//                zeros.append(item)
//            }
//        }
//        big.sort()
//        little.sort()
//        var res = [[Int]]()
//        if zeros.count == 0 {
////            var left =
//
//        }else {
//            for item in little {
//
//            }
//        }
//
//        return res
//    }
//}
