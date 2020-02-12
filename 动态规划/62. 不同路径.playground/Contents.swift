import UIKit

//https://leetcode-cn.com/problems/unique-paths/
/*13
 动态规划：使用二维数组，存储m*n的路径。这个路径等于向右的路径，加上向左的路径
 经验：先从最简单的示例开始，例如3*2
 0 0
 0 0
 0 0
 
 */
class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var pathsArr = Array(repeating: Array(repeating: 0, count: n), count: m)
        return _helper(&pathsArr, m-1, n-1)
    }
    
    func _helper(_ paths: inout [[Int]], _ m: Int, _ n: Int) -> Int {
        if m < 0 || n < 0 {
            return 0
        }
        if m == 0 || n == 0 {
            return 1
        }
        if paths[m][n] != 0 {
            return paths[m][n]
        }
        paths[m][n] = _helper(&paths, m, n-1) + _helper(&paths, m-1, n)
        return paths[m][n]
    }
    
}



