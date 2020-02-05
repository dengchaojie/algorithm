import UIKit

//https://leetcode-cn.com/problems/friend-circles/
//17 深度优先搜索
class Solution {
    func findCircleNum(_ M: [[Int]]) -> Int {
        guard M.count > 0 && M[0].count > 0 else {
            return 0
        }
        var M = M
        var count = 0
        var visited = Array(repeating: 0, count: M.count)
        for i in 0..<M.count {
            if visited[i] == 0 {
                count += 1
                dfs(&M, &visited, i)
            }
        }
        return count
    }
    
    func dfs(_ M: inout [[Int]], _ visited: inout [Int], _ i: Int ) {
        for j in 0..<M.count {
            if M[i][j] == 1 && visited[j] == 0 {
                visited[j] = 1
                dfs(&M, &visited, j)
            }
        }
        
    }
}

//17 广度优先搜索

//17 并查集
