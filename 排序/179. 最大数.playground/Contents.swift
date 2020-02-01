import UIKit

//https://leetcode-cn.com/problems/largest-number/

//56
//第一个数字，谁大谁排在第一位，
// 第一位相同，谁整体大，谁排在前面
class Solution {
    func largestNumber(_ nums: [Int]) -> String {
        // 先map转化成字符串数组，每2个字符串，满足条件，最后在合并为一个字符串
        let result = nums.map { "\($0)"}.sorted(by: { $0 + $1 > $1 + $0 }).joined()
        
        return result.first == "0" ? "0" : result
    }
}
// 9534330
//输入: [3,30,34,5,9]
//输出: 9534330
//class Solution {
//    func largestNumber(_ nums: [Int]) -> String {
//        var tempArr = [Int]()
//        for item in nums {
//            if let first = tempArr.first {
//
////                if <#condition#> {
////                    <#code#>
////                }
//            }else {
//                tempArr.append(item)
//            }
//        }
//
//
//
//
//
//    }
//    // a > b : true;
//    func compareTwoInt(_ a: Int, _ b: Int) -> Bool {
//        if firstInt(a) == firstInt(b) {
//            let aStr = String(a)
//            let bStr = String(b)
//            if aStr.count == bStr.count {
//                return a >= b
//            }else if aStr.count > bStr.count {
//
//            }else {
//
//            }
//        }else if firstInt(a) > firstInt(b) {
//            return true
//        }else {
//            return false
//        }
//    }
//
//    func firstInt(_ value: Int) -> Int {
//        if value < 10 {
//            return value
//        }
//        let str = String(value)
//
//        return Int(String(str.first!))!
//    }
//}
