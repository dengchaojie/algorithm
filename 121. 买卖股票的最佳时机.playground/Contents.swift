import UIKit

//https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock/
// si lu: ji suan yi ge zui da cha zhi

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var sub = 0

        let cou = prices.count
        if cou == 0 {
            return 0
        }
        if cou == 1 {
            return 0
        }
        if cou == 2 {
            let sub = prices[1] - prices [0]
            if sub > 0 {
                return sub
            }else {
                return 0
            }
        }
        let sortA = prices.sorted()
        let min = sortA.first!
        let max = sortA.last!
        var dict = [Int:Int]()
        for (n, item) in prices.enumerated() {
            if let index = dict[item] {
                if item == min {
                    
                }else if item == max {
                    if index > max {
                        dict[item] = n
                    }else {}
                }
                
            }else {
                dict[item] = n
            }
        }
        let minIndex = dict[min]
        let maxIndex = dict[max]
        if minIndex! < maxIndex! {
            sub = max - min
        }
    
        return sub
    }
    
}
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

let obj = Solution()
print(obj.maxProfit([7,1,5,3,6,4]))
/// zuo pai xu


