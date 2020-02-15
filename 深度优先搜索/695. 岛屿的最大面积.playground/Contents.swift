
//https://leetcode-cn.com/problems/max-area-of-island/
/*思路：遍历每个等于1的点，改为0，递归
 */

class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        guard grid.count > 0 && grid[0].count > 0 else {
            return 0
        }
        var grid = grid
        var maxArea = 0, area = 0
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 1 {
                    area = dfs(&grid, i, j)
                    maxArea = maxArea > area ? maxArea : area
                }
            }
        }
        return maxArea
    }
    
    func dfs(_ grid: inout [[Int]], _ i: Int, _ j:Int) -> Int {
        guard i >= 0 && j >= 0 && i < grid.count && j < grid[0].count else {
            return 0
        }
        if grid[i][j] == 1 {
            grid[i][j] = 0
            return 1 + dfs(&grid, i, j+1) + dfs(&grid, i, j-1) + dfs(&grid, i+1, j) + dfs(&grid, i-1, j)
        }
        
        return 0
    }
}
