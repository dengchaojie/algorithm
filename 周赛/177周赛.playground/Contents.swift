import Foundation
import UIKit
/*
 可以利用系统的api，例如sqrt()
 */

//5170 1363 1361 1360

class Solution {
    // 利用系统方法
    func daysBetweenDates(_ date1: String, _ date2: String) -> Int {
        let fm = DateFormatter.init()
        fm.dateFormat = "yyyy-MM-dd"
        let d1 = fm.date(from: date1)
        let d2 = fm.date(from: date2)
        
        if let d2 = d2, let inter = d1?.timeIntervalSince(d2) {
            return abs(Int(inter / (24*3600)))
        }else {
            fatalError()
        }
        
    }
    // 0 1 2 3
    // 0 1 1 1
    // 如果是二叉树，那么除了根节点外，每个非空节点的入度都为1。所以判断如果入度为的0的个数为1，入度大于1的个数为0时，才是二叉树
    func validateBinaryTreeNodes2(_ n: Int, _ leftChild: [Int], _ rightChild: [Int]) -> Bool {
        var cc = Array(repeating: 0, count: n)
        for i in 0..<n {
            if leftChild[i] != -1 {
                cc[leftChild[i]] += 1
            }
            if rightChild[i] != -1 {
                cc[rightChild[i]] += 1
            }
        }
        var count0 = 0
        var countMoreOne = 0
        for item in cc {
            if item == 0 {
                count0 += 1
            }else if item > 1 {
                countMoreOne += 1
            }
        }
        return countMoreOne == 0 && count0 == 1
    }
    // 根据图论的知识，-1的个数，等于节点个数加1时，为二叉树
    func validateBinaryTreeNodes(_ n: Int, _ leftChild: [Int], _ rightChild: [Int]) -> Bool {
        var count = 0
        for i in 0..<leftChild.count {
            if leftChild[i] == -1 {
                count += 1
            }
            if rightChild[i] == -1 {
                count += 1
            }
        }
        
        return count == n + 1
    }
    
    //
    func closestDivisors(_ num: Int) -> [Int] {
        let v = Int(sqrt(Double(num+2)))
        let num1 = num+1
        let num2 = num+2
        for i in (1...v).reversed() {
            if num1%i == 0 {
                return [i, num1/i]
            }
            if num2%i == 0 {
                return [i, num2/i]
            }
        }
        return [0,0]
    }
    
    func largestMultipleOfThree(_ digits: [Int]) -> String {
        var ans = ""
        // 将每个元素存到相应的数组中
        var res = [Int](),mod_1 = [Int](),mod_2 = [Int](), sum = 0

        for item in digits {
            sum += item
            if item % 3 == 0 {
                res.append(item)
            }else if item % 3 == 1 {
                mod_1.append(item)
            }else {
                mod_2.append(item)
            }
        }
        mod_1.sort(by: >)
        mod_2.sort(by: >)
        // 和的余数是0，直接返回
        if sum == 0 { return "" }
        if sum % 3 == 0 {
            res += mod_1 + mod_2
        } else if sum % 3 == 1 {
            // 是1，去掉最小的那个。
            if !mod_1.isEmpty {
                mod_1.removeLast()
            }else {
                //或者去掉2个余数为2的数
                if mod_2.count >= 2 {
                    mod_2.removeLast()
                    mod_2.removeLast()
                }else {
                    return ""
                }
            }
            res += mod_1 + mod_2

        } else {
            if !mod_2.isEmpty {
                mod_2.removeLast()
            }else {
                if mod_1.count >= 2 {
                    mod_1.removeLast()
                    mod_1.removeLast()
                }else {
                    return ""
                }
            }
            res += mod_1 + mod_2
        }
        res.sort(by: >)
        for item in res {
            ans += "\(item)"
        }
        // 是2，去掉
        return ans
    }

    
}


let obj = Solution()
//obj.daysBetweenDates("2020-01-15", "2019-12-31")

obj.closestDivisors(999)












//func minInterval(_ n: Int) -> [Int] {
//    var minInter = Int.max
//    var result = [Int]()
//    let time = Int(n / 2 + 1)
//    for i in 1...time {
//        if i * i == n {
//            return [i, i]
//        }else if i * i > n {
//            return result
//        }
//        var left = i, right = i
//        while right <= time {
//            let temp = left * right
//            if temp == n {
//                if right - left <= minInter {
//                    minInter = right - left
//                    result = [left,right]
//                    break
//                }
//            }else if temp < n {
//                right += 1
//            }else {
//                break
//            }
//        }
//    }
//
//    return result
//}
