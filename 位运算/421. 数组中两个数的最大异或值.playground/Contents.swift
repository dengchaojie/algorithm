import UIKit

//https://leetcode-cn.com/problems/maximum-xor-of-two-numbers-in-an-array/
// 36
// 知识点：符号^，表示异或。符号|，表示或
//https://docs.swift.org/swift-book/LanguageGuide/AdvancedOperators.html

// 00101


class Solution {
    func findMaximumXOR(_ nums: [Int]) -> Int {
        // a^b=c，那么a^c=b，b^c=a
        var res = 0
        var mask = 0
        for i in (0...31).reversed() {
            // 1 << i的意思是1左移i位，与上一次的mask异或
            mask = mask ^ (1 << i)
            var set = Set<Int>()
            for item in nums {
                // 在当前位，计算每个数字的前缀，这里用到&
                set.insert(item & mask)
            }
            // 先假定第n为1，前n-1位res为之前迭代求得
            let temp = res ^ (1 << i)
            for prefiex in set {
                // 如果包含，那么说明这一位可以为1，结束这个for
                // 如果不包含，那么res不会被改写，进行外面的大for
                if set.contains(prefiex ^ temp) {
                    res = temp
                    break
                }
            }
        }
        return res
    }
}

let obj = Solution()
obj.findMaximumXOR([3, 10, 5, 25, 2, 8])



//做题建议：
//不建议直接看题解做题，一般思路建立的路径：
//自行解决-（有点不懂）群中讨论解决-（实在不懂）看题解解决，对问题标记，双休日再次巩固
