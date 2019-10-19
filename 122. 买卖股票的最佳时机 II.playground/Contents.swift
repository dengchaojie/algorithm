import UIKit

//https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-ii/
///这道题，我看了题解
/// 方法1，峰谷法
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 0 {
            return 0

        }
        var maxProfit = 0
        var gu = prices[0]
        var feng = gu
        var i = 0
        
        while i < prices.count - 1 {
            while i < prices.count - 1 && prices[i] >= prices[i+1] {
                i += 1
            }
            gu = prices[i]
            while i < prices.count - 1 && prices[i] <= prices[i+1]   {
                i += 1
            }
            feng = prices[i]
            maxProfit += feng - gu
        }
        
        return maxProfit
    }
    
}
/// 方法2，简单的一次遍历：将数字连线，将先划分了一段段由最小值到最大值的连线，求每小段的最大利润，在求和
//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        if prices.count == 0 {
//            return 0
//
//        }
//        var maxProfit = 0
//        for i in 1..<prices.count {
//            if prices[i] > prices[i-1] {
//                maxProfit += prices[i] - prices[i-1]
//            }
//        }
//
//        return maxProfit
//    }
//
//}
//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        var sumProfit = 0
//
//        var sum = 0
//        var pingJunZhi = 0.0
//        for item in prices {
//            sum += item
//
//        }
//        pingJunZhi = Double(sum) / Double(prices.count)
//        var maiRu = -1
//        var maiChu = -1
//        for item in prices {
//            if Double(item) < pingJunZhi {
//                if maiRu > 0 && item > maiRu {
//
//                }else
//                {
//                    maiRu = item
//                }
//            }else {
//                if maiRu > 0 {
//                    maiChu = item
//                    sumProfit += maiChu - maiRu
//                    maiRu = -1
//                    maiChu = -1
//                }
//            }
//        }
//        return sumProfit
//    }
//}

//[7,1,5,3,6,4] 求最优解，
// 平均值是26/6 = 4.33
// 最小值是1，最大值是7

let obj = Solution()
//print(obj.maxProfit([7,1,5,3,6,4]))
print(obj.maxProfit([1,2,3,4,5]))
//print(obj.maxProfit([7,6,4,3,1]))


