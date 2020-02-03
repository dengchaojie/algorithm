import UIKit

//https://leetcode-cn.com/problems/single-number-iii/
// 07

class Solution {
    func singleNumber(_ nums: [Int]) -> [Int] {
        var res = [Int: Int]()
        var temp = [Int: Int]()
        for item in nums{
            if temp[item] != nil {
                if res[item] != nil {
                    res[item] = nil
                }
            }else {
                temp[item] = 1
                res[item] = 1
            }
        }
        var result = [Int]()
        for key in res.keys {
            result.append(key)
        }
        
        return result
    }
}



