import UIKit

//https://leetcode-cn.com/problems/01-matrix/

//37
class Solution {
    func updateMatrix(_ matrix: [[Int]]) -> [[Int]] {
    // 深度优先搜索，分别在上下左右计算最下值
        
        guard matrix.count > 0 && matrix[0].count > 0 else {
            return matrix
        }
        var value0 = [[Int]]()
        var rooms = matrix

        let m = matrix.count
        let n = matrix[0].count
        for i in 0..<m {
            for j in 0..<n {
                if matrix[i][j] == 0 {
                    //如果是门，那么计算ij到上下左右的距离
                    rooms[i][j] = 0
                    value0.append([i,j])
                }else {
                    rooms[i][j] = Int.max
                    
                }
            }
        }
        let direct = [[-1,0], [1, 0], [0, -1], [0, 1]]
        while !value0.isEmpty {
            let first = value0.removeFirst()
            for i in 0..<4 {
                let newR = first[0] + direct[i][0]
                let newC = first[1] + direct[i][1]
                if newR >= 0 && newR < m && newC >= 0 && newC < n {
                    if rooms[newR][newC] > rooms[first[0]][first[1]] + 1 {
                        rooms[newR][newC] = rooms[first[0]][first[1]] + 1
                        value0.append([newR, newC])
                    }
                }
            }
        }
        return rooms
    }
        

}

let obj = Solution()
obj.updateMatrix([[0 ,0 ,0], [0,1,0], [1,1,1]])
