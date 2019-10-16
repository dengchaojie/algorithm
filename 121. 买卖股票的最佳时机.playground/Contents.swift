import UIKit

//https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock/
// si lu: ji suan yi ge zui da cha zhi
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
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
        var sub = 0
        var min = prices.first!
        var max = 0
        for item in prices
        {
            if item < min
            {
                min = item
            }else {
                if item > max {
                    max = item
                }
            }
            
            
        }
        
        return sub
    }
}
