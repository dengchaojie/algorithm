import UIKit

//https://leetcode-cn.com/problems/excel-sheet-column-title/
// 26
class Solution {
    func convertToTitle(_ n: Int) -> String {
        var n = n
        var res = ""
        let abc = ["A", "B", "C", "D", "E", "F", "G",
        "H", "I", "J", "K", "L", "M", "N",
        "O", "P", "Q", "R", "S","T", "U", "V","W", "X", "Y","Z"
        ]
        while n > 0 {
            var yu = n % 26
            if yu == 0 {
                yu = 26
                n = n - 1
            }
            res = abc[yu - 1] + res
            n = n / 26
        }
        return res
    }
}
//class Solution {
//    func convertToTitle(_ n: Int) -> String {
//        if n == 0 {
//            return ""
//        }
//        let abc = ["A", "B", "C", "D", "E", "F", "G",
//        "H", "I", "J", "K", "L", "M", "N",
//        "O", "P", "Q", "R", "S","T", "U", "V","W", "X", "Y","Z"
//        ]
//
//        var res = ""
//        var yu = n % 26
//        if yu > 0 {
//            res += abc[yu - 1]
//        }
//        var carry = n
//        if carry <= 26 {
//            return abc[carry - 1]
//        }
//        while carry > 26 {
//            yu = carry % 26
//            if yu > 0 {
//                res = abc[yu - 1] + res
//            }
//            carry = carry / 26
//        }
//        if carry > 0 {
//            res = abc[carry - 1] + res
//        }
//        return res
//    }
//}

let obj = Solution()
obj.convertToTitle(701)
