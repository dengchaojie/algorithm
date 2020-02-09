import UIKit

//https://leetcode-cn.com/problems/spiral-matrix/
/*44
 00 01 02 12 22 21 20 10 11
 */
let arr = [1,2,3,4]
// through,包含这个index
for i in stride(from: 3, through: 0, by: -1) {
    print(arr[i])
}
print("----")
// to，不包含这个index
for i in stride(from: 3, to: 0, by: -1) {
    print(arr[i])
}

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard matrix.count > 0 else{
            return [Int]()
        }
        var res = [Int]()
        var startX = 0
        var endX = matrix.count-1
        var startY = 0
        var endY = matrix[0].count - 1
        while true {
            // top
            for i in startY...endY {
                res.append(matrix[startX][i])
            }
            startX += 1
            if startX > endX {
                break
            }
            // right
            for i in startX...endX {
                res.append(matrix[i][endY])
            }
            endY -= 1
            if startY > endY {
                break
            }
            // bottom
            for i in stride(from: endY, through: startY, by: -1) {
                res.append(matrix[endX][i])
            }
            endX -= 1
            if startX > endX {
                break
            }
            // left
            for i in stride(from: endX, through: startX, by: -1) {
                res.append(matrix[i][startY])
            }
            startY += 1
            if startY > endY {
                break
            }
        }
        
        
        return res
    }
}
