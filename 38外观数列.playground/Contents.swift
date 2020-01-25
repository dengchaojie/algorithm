
//https://leetcode-cn.com/problems/count-and-say/
//20
// 会员剩余16天
/// 算法考察逻辑思维能力，解决问题的能力
class Solution {
    func countAndSay(_ n: Int) -> String {
// 递归调用：个数+字符
        if n == 1 {
            return "1"
        }
        
        let previousStr = countAndSay(n - 1)
        var currentChar = previousStr.first!, currentCount = 0, res = ""
        for (_, item) in previousStr.enumerated() {
            if currentChar == item {
                currentCount += 1
            }else {
                // 拼接当前字符前的字符串
                res += "\(currentCount)\(currentChar)"
                currentCount = 1
                currentChar = item
            }
        }
        // 拼接当前字符
        res += "\(currentCount)\(currentChar)"
        return res
        
    }
}
