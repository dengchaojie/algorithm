//https://leetcode-cn.com/problems/search-a-2d-matrix-ii/


class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard matrix.count > 0 && matrix[0].count > 0 else {
            return false
        }
        for i in 0..<matrix.count {
            if matrix[i][0] > target {
                return false
            }
            for j in 0..<matrix[0].count {
                if matrix[i][j] == target {
                    return true
                }else if matrix[i][j] > target {
                    break
                }
            }
        }
        return false
    }
}
