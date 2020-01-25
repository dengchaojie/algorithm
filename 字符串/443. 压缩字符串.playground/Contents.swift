import UIKit

//https://leetcode-cn.com/problems/string-compression/submissions/
// 47 遍历字符数组，计算重复元素的个数，做下个位置的替换


class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var index = 0, currentCount = 0
        
        for i in 0..<chars.count {
            currentCount += 1 // 计算重复元素的个数
            // 当是最后一个元素时，或者是不等于下一个元素时，进入
            if i + 1 == chars.count || chars[i] != chars[i+1]  {
                chars[index] = chars[i]// 先把当前元素保存下来，在计算它的个数
                // 如果不等于1，说明一直遍历的是重复元素
                if currentCount != 1 {
                    // 替换重复元素，位置是当前index的下一个位置到重复个数
                    chars.replaceSubrange(index + 1...currentCount.length + index, with: Array(String(currentCount)))
                }
                index += currentCount == 1 ? 1 : 1 + currentCount.length
                currentCount = 0
            }
            // 执行到这里，说明chars[i] == chars[i + 1]，那么currentCount一直累加
        }
        print(chars)
        return index
    }
}

extension Int {
    
    var length: Int {
        return String(self).count
    }
    
}


let obj = Solution()
var str = "aaa"
var chars = Array(str)
obj.compress(&chars)
