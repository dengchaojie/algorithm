

// 思路：计算岛屿的数量，计算邻居的数量，
class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var numIslands = 0
        var numNeighbors = 0
        for i in 0 ..< grid.count {
            
            for j in 0 ..< grid[0].count {
                if grid[i][j] == 1 {
                    numIslands += 1
                    // judge that right is neighbor
                    if j < grid[0].count - 1 && grid[i][j+1] == 1 {
                        numNeighbors += 1
                    }
                    // judge that down is neighbor
                    if i < grid.count - 1 && grid[i+1][j] == 1 {
                        numNeighbors += 1
                    }
                }
            }
            
        }
        
        return numIslands * 4 - numNeighbors * 2
    }
}



let arr =
[[0,1,0,0],
 [1,1,1,0],
 [0,1,0,0],
 [1,1,0,0]]
let obj = Solution()
print(obj.islandPerimeter(arr))
//print(arr[0].count)

