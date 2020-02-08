import UIKit

//https://leetcode-cn.com/problems/restore-ip-addresses/
/*55
 算法：递归
 1 验证这段是否合法
 2 如果是最后一个点时，注意在结果中添加
 3 回溯方法：前一个点的位置，和剩余的点的数量
 */

class Solution {
    var n = 0
    var str = [Character]()
    var segments = [String]()
    var output = [String]()
    func restoreIpAddresses(_ s: String) -> [String] {
        if s.count < 4 {
            return [String]()
        }
        str = Array(s)
        n = str.count
        dfs(-1, 3)
        
        return self.output
    }
    // 1验证这段是否合法
    func isValid(_ segment: String) -> Bool {
        if segment.count == 0 {
            return false
        }
        if segment.count > 3 {
            return false
        }
        return String(segment.first!) != "0" ? (Int(segment)! <= 255) :
            (segment.count == 1)
    }
    // 2如果是最后一个点时，注意在结果中添加
    func updateOutput(_ curr_pos: Int) {
        let four = String(str[(curr_pos+1)...])
        if isValid(four) {
            segments.append(four)
            let temp = segments.joined(separator: ".")
            self.output.append(temp)
            segments.removeLast()
        }
    }
    
    //3回溯方法：前一个点的位置，和剩余的点的数量
    func dfs(_ prePos: Int, _ dots: Int) {
        let maxPos = min(n - 1, prePos + 4)
        for currPos in (prePos+1..<maxPos) {
            let sub = String(str[(prePos+1)..<(currPos+1)])
            if isValid(sub) {
                segments.append(sub)
                if dots - 1 == 0 {
                    updateOutput(currPos)
                }else {
                    dfs(currPos, dots - 1)
                }
                segments.removeLast()
            }
        }
    }
}
let obj = Solution()
obj.restoreIpAddresses("25525511135")


//
//if s.count == 12 {
//    var temp = s
//    temp.insert(Character("."), at: temp.index(temp.startIndex, offsetBy: 3))
//    temp.insert(Character("."), at: temp.index(temp.startIndex, offsetBy: 7))
//    temp.insert(Character("."), at: temp.index(temp.startIndex, offsetBy: 11))
//    result.append(temp)
//}

let seg = ["1","2"]
let res = seg.joined(separator: ".")
print(res)
