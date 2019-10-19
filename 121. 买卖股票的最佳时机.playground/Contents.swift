import UIKit

//https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock/
// si lu: ji suan yi ge zui da cha zhi
// dong tai gui hua wen ti [7,1,5,3,6,4]
// yi ci bian li，看的题解，我没有做出来。我花了100分钟
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0
        for item in prices {
            if item < minPrice {
                minPrice = item
            }else if (item - minPrice) > maxProfit {
                maxProfit = item - minPrice
            }
        }
        return maxProfit
    }
}
let obj = Solution()
print(obj.maxProfit([7,1,5,3,6,4]))
/// zuo pai xu
// bao li bian li



//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        var sub = 0
//        let cou = prices.count
//        let sortedPri = prices.sorted()
//        let min = sortedPri.first!
//        let max = sortedPri.last!
//        var minIndex = -1
//        var maxIndex = -1
//        for (n, item) in prices.enumerated() {
//            if item == min {
//                minIndex = n
//            }else if item == max {
//                maxIndex = n
//            }
//        }
//        return sub
//    }
//}
/// 最后一个不能是最小值，第一个不能是最大值
/// 最小值最好靠前，最的值最好靠后
//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        var sub = 0
//
//        let cou = prices.count
//        if cou == 0 {
//            return 0
//        }
//        if cou == 1 {
//            return 0
//        }
//        if cou == 2 {
//            let sub = prices[1] - prices [0]
//            if sub > 0 {
//                return sub
//            }else {
//                return 0
//            }
//        }
//        let sortA = prices.sorted()
//        let min = sortA.first!
//        let max = sortA.last!
//        var dict = [Int:Int]()
//        for (n, item) in prices.enumerated() {
//            if dict[item] != nil {
//                if item == min {
//
//                }else if item == max {
//                    dict[item] = n
//                }
//            }else {
//                if item == min && n == (cou - 1) {
//
//                }else if item == max && n == 0 {
//
//                }else {
//                    dict[item] = n
//                }
//            }
//        }
//        let minIndex = dict[min]
//        let maxIndex = dict[max]
//        if minIndex! < maxIndex! {
//            sub = max - min
//        }else {
//            let keysSorted = dict.keys.sorted()
//            for item in keysSorted {
//                if
//            }
//
//        }
//
//        return sub
//    }
//
//}
//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        let cou = prices.count
//        if cou == 0 {
//            return 0
//        }
//        if cou == 1 {
//            return 0
//        }
//        if cou == 2 {
//            let sub = prices[1] - prices [0]
//            if sub > 0 {
//                return sub
//            }else {
//                return 0
//            }
//        }
//        var sub = 0
//        var min = prices.first!
//        var minIndex = 0
//        var max = 0
//        var maxIndex = -1
//        for (n, item) in prices.enumerated()
//        {
//            if item < min
//            {
//                min = item
//                minIndex = n
//            }else {
//                if n > minIndex && item > max {
//                    max = item
//                    maxIndex = n
//                }
//            }
//        }
//        if maxIndex > minIndex {
//            sub = prices[maxIndex] - prices[minIndex]
//
//        }
//        return sub
//    }
//}




