
//6. 算法：行列均升序的矩阵，如何查找指定值是否存在

class Solution {
    
    func searchValue(_ grid: [[Int]], _ target: Int) -> Bool {
        guard grid.count > 0 && grid[0].count > 0 else {
            return false
        }
        
        for i in 0..<grid.count {
            if grid[i][0] > target {
                return false
            }
            for j in 0..<grid[0].count {
                if grid[i][j] == target {
                    return true
                }else if grid[i][j] > target {
                    break
                }
            }
        }
        return false
    }
}

let obj = Solution()
obj.searchValue([[1,2,3],[4,5,6],[8,9,10]], 5)

