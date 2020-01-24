import UIKit

//https://leetcode-cn.com/problems/implement-strstr/
// 30
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        // 转化成字符数组
        let hArray = Array(haystack), nArray = Array(needle)
        let hLen = hArray.count, nLen = nArray.count
        if hLen < nLen {
            return -1
        }
        if nLen == 0 {
            return 0
        }
        // 最多遍历hLen-nLen+1次
        for i in 0...(hLen - nLen) {
            // 等于nArray的第一个字符，是前提条件
            if hArray[i] == nArray[0] {
                for j in 0..<nLen {
                    // 如果不相等，那么i结束这个for，i+1
                    if hArray[i+j] != nArray[j] {
                        break
                    }
                    // 当执行到这里时，说明nArray已经遍历到最后一个元素，且相等，
                    // 直接return i
                    if j+1 == nLen {
                        return i
                    }
                }
            }
        }
        return -1
    }
}
/// adsf f
