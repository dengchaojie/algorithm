import UIKit

//https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/
// 42
// 这个for没有累加啊？
class Solution {
    func maxProfit(_ prices: [Int], _ fee: Int) -> Int {
        var cash = 0, hold = -prices[0]
        for i in 1..<prices.count {
            cash = max(cash, hold + prices[i] - fee)
            hold = max(hold, cash - prices[i])
            print(cash)
            print(hold)
            print("------")
        }
        return cash
    }
}

let obj = Solution()
obj.maxProfit([1, 3, 2, 8, 4, 9], 2)
//0
//-1
//------
//0
//-1
//------
//5                     //产生最大差值
//-1
//------
//5
//1
//------
//8                     //产生最大差值
//1
//------
//class Solution {
//    func maxProfit(_ prices: [Int], _ fee: Int) -> Int {
//        if prices.count == 0 || prices.count == 1 {
//            return 0
//        }
//        var subArr = [Int]()
//        for index in 1..<prices.count {
//            var tempArr = Array(prices[0..<index])
//            tempArr.sort()
//            if prices[index] - tempArr.first! > 2 {
//                subArr.append(prices[index] - tempArr.first!)
//            }
//        }
//        var maxProfit = 0
//        if subArr.count > 0 {
//            subArr.sort()
//            maxProfit = subArr.last! - 2
//        }
//        for item in subArr {
//
//        }
//        return maxProfit
//    }
//}

// 计算差值的和的最大值？




//let temp = prices.sorted()
//let max = temp.last!
//let maxIndex = prices.firstIndex(of: max)
//var subArr = Array(prices[0..<maxIndex!])
//subArr.sort()
//let min = subArr.first!
//var maxProfit = max - min - 2
//
//
//return maxProfit
