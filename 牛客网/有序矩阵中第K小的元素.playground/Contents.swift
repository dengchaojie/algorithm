import UIKit

let matrix = [
    [ 1,  5,  9],
    [10, 11, 13],
    [12, 13, 15]]
var temp = [Int]()
for i in 0..<matrix.count  {
    temp.append(contentsOf: matrix[i])
}



class Solution {
    
    func someFunc(_ matrix: [[Int]], _ k: Int) -> Int {
        guard matrix.count>0 && matrix[0].count>0 else {
            return 0
        }
        var temp = [Int]()
        for i in 0..<matrix.count  {
            temp.append(contentsOf: matrix[i])
        }
        temp.sort()
        return temp[k-1]
    }
    
}

let obj = Solution()
obj.someFunc(matrix, 8)

