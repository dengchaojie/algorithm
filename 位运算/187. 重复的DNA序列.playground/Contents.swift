import UIKit

//https://leetcode-cn.com/problems/repeated-dna-sequences/
// 剩余6天
// 14 abcdefghijk

class Solution {
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        if s.count <= 10 {
            return []
        }
        var set = Set<String>()
        var res = Set<String>()
        let chars = Array(s)
        for i in 0...(s.count-10) {
            let sub = String(chars[i..<(i+10)])
            if set.contains(sub) {
                res.insert(sub)
            }else {
                set.insert(sub)
            }
        }
        // 将set转成array
        return Array(res)
    }
    
}


//class Solution {
//    func findRepeatedDnaSequences(_ s: String) -> [String] {
//        if s.count <= 10 {
//            return []
//        }
//        var res = [String: String]()
//        let chars = Array(s)
//        for i in 0..<s.count {
//            let end = i + 1 + 10
//            if end <= s.count {
//                let pre = i + 10
//                let temp = String(chars[i..<pre])
//                let sub = String(chars[(i+1)...])
//                if sub.contains(temp) {
//                    if res[temp] == nil{
//                        res[temp] = temp
//                    }
//                }
//            }else {
//                break
//            }
//        }
//        var result = [String]()
//        for key in res.keys {
//            result.append(key)
//        }
//        return result
//    }
//
//
//}

let obj = Solution()
//obj.findRepeatedDnaSequences("AAAAAAAAAAAA")
obj.findRepeatedDnaSequences("AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT")

//AAAAA CCCCCAAAAA C CCCCCAAAAA GGGTTT
//["AAAAACCCCC", "CCCCCAAAAA"]
