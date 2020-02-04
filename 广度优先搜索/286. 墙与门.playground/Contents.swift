import UIKit

//https://leetcode-cn.com/problems/walls-and-gates/
//21
class Solution {
    func wallsAndGates(_ rooms: inout [[Int]]) {
        // 深度优先搜索，分别在上下左右计算最下值
        guard rooms.count > 0 && rooms[0].count > 0 else {
            return
        }
        let m = rooms.count
        let n = rooms[0].count
        for i in 0..<m {
            for j in 0..<n {
                if rooms[i][j] == 0 {
                    //如果是门，那么计算ij到上下左右的距离
                    dfs(&rooms, i, j, m, n, 0)
                }
            }
        }
        
        
    }
    
    func dfs(_ rooms: inout [[Int]], _ i: Int, _ j: Int,
             _ m: Int, _ n: Int, _ distance: Int) {
        guard i >= 0 && i < m && j >= 0 && j < n else {
            return
        }
        // 如果是距离是0，或者距离比当前ij的距离小时，
        // 那么给说明有到这个ij更近的门。
        if distance == 0 || distance < rooms[i][j] {
            rooms[i][j] = distance
            dfs(&rooms, i+1, j, m, n, distance+1)
            dfs(&rooms, i-1, j, m, n, distance+1)
            dfs(&rooms, i, j+1, m, n, distance+1)
            dfs(&rooms, i, j-1, m, n, distance+1)
        }
    }
}

//let m = rooms.count
//let n = rooms[0].count
//guard m > 0 && n > 0 else {
//    return
//}
