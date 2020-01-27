import UIKit

//https://leetcode-cn.com/problems/length-of-last-word/
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let chars = Array(s)
        var res = 0
        if chars.count == 0 {
            return 0
        }
        for i in (0..<chars.count).reversed() {
            if res == 0 {
                if chars[i] == " " {
                    continue
                }else {
                    res += 1
                }
            }else {
                if chars[i] == " " {
                    break
                }else {
                    res += 1
                }
            }
        }
        return res
        
    }
}

//class Solution {
//    func lengthOfLastWord(_ s: String) -> Int {
//        if s == "" {
//            return 0
//        }
//        if s.last == Character(" ") {
//            return 0
//        }
//        let arr = s.split(separator: Character(" "))
//
//        if arr.count <= 1 {
//            return s.count
//        }else {
//            return arr.last!.count
//        }
//
//
//    }
//}

let obj = Solution()
obj.lengthOfLastWord(" a")

