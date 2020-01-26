import UIKit

//https://leetcode-cn.com/problems/plus-one/

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var index = digits.count - 1
        var digits = digits
        while index >= 0 {
            if digits[index] < 9 {
                digits[index] = digits[index] + 1
                return digits
            }
            digits[index] = 0
            index -= 1
        }
        digits.insert(1, at: 0)
        return digits
    }
}
//class Solution {
//    func plusOne(_ digits: [Int]) -> [Int] {
//        var carry = 0, sum = 0
//        var digits = digits
//        for i in 0..<digits.count {
//            if i == 0 {
//                sum = digits[digits.count - i - 1] + 1
//            }else {
//                sum = digits[digits.count - i - 1] + carry
//            }
//            digits[digits.count - i - 1] = sum % 10
//            carry = sum / 10
//            if carry == 0 {
//                return digits
//            }else {
//                if i == digits.count - 1 {
//                    digits.insert(carry, at: 0)
//                    return digits
//                }else {
//                    // 不是最后一个元素，进行下次循环
//                }
//            }
//
//        }
//        return digits
//    }
//}

let obj = Solution()
//obj.plusOne([1,2,3])
//obj.plusOne([1,2,9])
//obj.plusOne([9,9,9])
obj.plusOne([4,3,2,1])


