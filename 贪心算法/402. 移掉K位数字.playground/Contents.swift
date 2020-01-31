import UIKit

//https://leetcode-cn.com/problems/remove-k-digits/
// 16
// 一个字符数组，始终保持升序
class Solution {
    func removeKdigits(_ num: String, _ k: Int) -> String {
        if num.count == k {
            return "0"
        }
        var tempChars = [Character](), k = k
        let size = num.count - k
        
        for item in num {
            //注意这个地方是while。不是if
            // 如果tempChars有元素，并且最后一个元素比当前元素大，
            // 那么while循环遍历，依次把比当前元素大的，尾部移除，知道不满足条件
            while k > 0 && tempChars.count > 0
                && charToInt(tempChars.last!) > charToInt(item) {
                tempChars.removeLast()
                k -= 1
            }
            tempChars.append(item)
        }
        tempChars = Array(tempChars[0..<size])
        for item in tempChars {
            if item != Character("0") {
                // 如果头部不是0，结束遍历
                break
            }else {
                // 如果头部是0，一一去掉0
                tempChars.removeFirst()
            }
            
        }
        return tempChars.isEmpty ? "0" : String(tempChars)
    }
    
    func charToInt(_ char: Character) -> Int {
        return Int(String(char))!
    }
}

let obj = Solution()
obj.removeKdigits("1234567890", 9)

//class Solution {
//    func removeKdigits(_ num: String, _ k: Int) -> String {
//        if num.count == k {
//            return "0"
//        }
//        var result = ""
//        var chars = Array(num)
//        let nums = num.map { (char) -> Int in
//            return Int(String(char))!
//        }.sorted()
//        for i in 0..<k {
//
//        }
//
//        return result
//    }
//}


//1432219
//132219 143221
//12219 13221
//1219 1221
