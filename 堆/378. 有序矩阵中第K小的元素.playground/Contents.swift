import UIKit

//https://leetcode-cn.com/problems/kth-smallest-element-in-a-sorted-matrix/

// 13
class Solution {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        var resArr = [Int]()
        for item in matrix {
            resArr.append(contentsOf: item)
            
        }
        resArr.sort()
        return resArr[k-1]
    }
}


