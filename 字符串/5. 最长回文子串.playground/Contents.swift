import UIKit

//https://leetcode-cn.com/problems/longest-palindromic-substring/
// 遍历字符数组，以每一个为中心节点，分别往左和往右，一一比对，差值为最大
class Solution {
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 0 else {
            return s
        }
        let chars = Array(s)
        var maxLen = 0, start = 0
        for i in 0..<chars.count {
            // acdca
            searchPalindrome(chars, i, i, &start, &maxLen)
            // acddca
            searchPalindrome(chars, i, i + 1, &start, &maxLen)

        }
        return String(chars[start..<start+maxLen])
    }
    
    private func searchPalindrome(_ chars: [Character], _ l: Int, _ r: Int, _ start: inout Int, _ maxLen: inout Int) {
        var l = l, r = r
        // 反向对比字符
        while l >= 0 && r < chars.count && chars[l] == chars[r] {
            l -= 1
            r += 1
        }
        if maxLen < r - l - 1 { // 最大值产生
            start = l + 1 //记录新的位置
            maxLen = r - l - 1// 保存最大值
        }
        
        
    }
}

let obj = Solution()
obj.longestPalindrome("bcacd")



