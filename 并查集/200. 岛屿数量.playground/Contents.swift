import UIKit

//https://leetcode-cn.com/problems/number-of-islands/
// 45
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        
        guard grid.count > 0 && grid[0].count > 0 else {
            return 0
        }
        let m = grid.count
        let n = grid[0].count
        var count = 0
        
        for i in 0..<m {
            for j in 0..<n {
                if String(grid[i][j]) == "1" {
                    count += 1
                    
                }
            }
        }
        return count
    }
    
    func dfs(_ grid:inout [[Character]], _ i: Int,
             _ j: Int, _ m: Int, _ n: Int) {
        guard i >= 0 && i < m && j >= 0 && j < n &&
            String(grid[i][j]) == "1" else {
            return
        }
        grid[i][j] = Character("0")
        dfs(&grid, i+1, j, m, n)
        dfs(&grid, i-1, j, m, n)
        dfs(&grid, i, j+1, m, n)
        dfs(&grid, i, j-1, m, n)

    }
}
