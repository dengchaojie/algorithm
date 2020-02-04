import UIKit

//https://leetcode-cn.com/problems/perfect-squares/
//28动态规划
class Solution {
    func numSquares(_ n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        var leastNums = Array(repeating: Int.max, count: n + 1)
        leastNums[0] = 0
        for i in 1...n {
            print("-------")
            print("i == \(i)")
            for j in 1...i {
                print("j == \(j)")
                if j * j > i {
                    break
                }
                leastNums[i] = min(leastNums[i], leastNums[i - j * j] + 1)
                print("i == \(i), \(leastNums[i])")
            }

        }
        return leastNums[n]
    }
}

let obj = Solution()
obj.numSquares(5)

