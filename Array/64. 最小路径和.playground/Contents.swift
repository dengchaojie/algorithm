//https://leetcode-cn.com/problems/minimum-path-sum/

/*55
 计算到每个ij的最小值
 */
class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        guard grid.count > 0 && grid[0].count > 0 else {
            return 0
        }
        let m = grid.count
        let n = grid[0].count
        var reslut = Array(repeating: Array(repeating: 0, count:n ), count: m)
        for i in 0..<m {
            for j in 0..<n {
                if i == 0 && j == 0 {
                    reslut[i][j] = grid[i][j]
                }else if i == 0 {
                    reslut[i][j] = reslut[i][j-1] + grid[i][j]
                }else if j == 0 {
                    reslut[i][j] = reslut[i-1][j] + grid[i][j]
                }else {
                    reslut[i][j] = min(reslut[i-1][j], reslut[i][j-1]) + grid[i][j]
                }
            }
        }
        return grid[m-1][n-1]
        
    }
    
    func minPathSum2(_ grid: [[Int]]) -> Int {
        guard grid.count > 0 && grid[0].count > 0 else {
            return 0
        }
        // 找到所有路径
        var paths = [[Int]]()
        var path = [Int]()
        helper(grid, &paths, &path, 0, 0)
        var result = Int.max
        
        
        
        
        return result
    }
    
    func helper(_ grid: [[Int]], _ paths:inout [[Int]], _ path:inout [Int], _ i: Int, _ j: Int) {
        guard i>=0 && j>=0 && i<grid.count && j<grid[0].count else {
            return
        }
        if i == grid.count && j == grid[0].count {
            paths.append(path)
            return
        }
        path.append(grid[i][j])
        helper(grid, &paths, &path, i, j+1)
        path.removeLast()
        helper(grid, &paths, &path, i+1, j)
        
        
        
    }
    
    
    
}
