import UIKit

//https://leetcode-cn.com/problems/partition-array-for-maximum-sum/
// 57
class Solution {
    func maxSumAfterPartitioning(_ A: [Int], _ K: Int) -> Int {
        if A.count == 0 {
            return 0
        }
        var dp = Array(repeating: 0, count: A.count+1)
        for i in 0...A.count {
            var tempMax = dp[i]
            var j = i - 1
            while (i - j) <= K && j >= 0 {
                tempMax = max(tempMax, A[j])
                dp[i] = max(dp[i], dp[j] + tempMax * (i - j))
                j -= 1
            }
        }
        return dp[A.count]
    }
}
