import UIKit

//https://leetcode-cn.com/problems/transpose-matrix/
// 09
class Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        let row = A.count
        let culumn = A[0].count
        var cArr = Array(repeating: 0, count: row)
        var res = Array(repeating: cArr, count: culumn)
        for i in 0..<row {
            for j in 0..<culumn {
                res[j][i] = A[i][j]
            }
        }
        
        return res
        
    }
    
}



//1 2 3
//4 5 6
//7 8 9
//
//
//1 4 7
//2 5 8
//3 6 9

//1 2 3
//4 5 6

//1 4
//2 5
//3 6
