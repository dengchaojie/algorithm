import UIKit

//https://leetcode-cn.com/problems/coin-change/
/*24
 0 1 2
 0 1 1
 i == 2
 从金额1，开始遍历，计算当前金额的最小硬币数
 */
class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard amount > 0 else {
            return 0
        }
        let sort = coins.sorted()
        var minAmount = Array(repeating: -1, count: amount+1)
        minAmount[0] = 0
        for amt in 1...amount {
            for coin in sort {
                if coin > amt {
                    break
                }
                if minAmount[amt - coin] == -1 {
                    continue
                }
                minAmount[amt] = minAmount[amt] == -1 ?
                    minAmount[amt - coin] + 1 :
                    min(minAmount[amt - coin] + 1, minAmount[amt])
            }
        }
        return minAmount[amount]
    }
}

let obj = Solution()
obj.coinChange([1,2,5], 11)

//
//func count(_ coins: [Int], _ amount: Int, _ res: inout Int, _ yu: inout Int) {
//    for i in 0..<coins.count {
//        let shang = amount / coins[i]
//        yu = amount % coins[i]
//        res += shang
//        if yu != 0 {
//            if i + 1 < coins.count {
//                let sub = Array(coins[(i+1)...])
//                count(sub, yu, &res, &yu)
//            }
//
//        }
//    }
//}
