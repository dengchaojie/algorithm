import Foundation
//https://leetcode-cn.com/problems/excel-sheet-column-number/
//思路：从左到右，每个字符*26


// fang fa 2
class Solution {
    func titleToNumber(_ s: String) -> Int {
        var res = 0
        let scalarsOfA = "A".unicodeScalars
        for char in s {
            let scalarsOfChar = String(char).unicodeScalars
            let current = Int( scalarsOfChar[scalarsOfChar.startIndex].value -
                scalarsOfA[scalarsOfA.startIndex].value) + 1
            res = res*26+current
        }
        return res
    }
    
}
//class Solution {
//    func titleToNumber(_ s: String) -> Int {
//        var res = 0
//        let dict = ["A":1,"B":2,"C":3,"D":4,"E":5,"F":6,"G":7,
//        "H":8,"I":9,"J":10,"K":11,"L":12,"M":13,"N":14,
//        "O":15,"P":16,"Q":17,"R":18,"S":19,"T":20,
//        "U":21,"V":22,"W":23,"X":24,"Y":25,"Z":26]
//        let len = s.count
//        for (i, c) in s.enumerated() {
//            let cStr = String.init(c)
//            guard let value = dict[cStr] else {
//                return res
//            }
//            var mi = 1
//            for _ in 0..<(len - i - 1) {
//                mi = mi * 26
//            }
//            res += value * mi
//
//        }
//        return res
//    }
//}
//
//
let obj = Solution()
print(obj.titleToNumber("ZY"))
