import UIKit

//https://leetcode-cn.com/problems/permutations/
/*50
 算法：1 2;2 1
 经验：当不知道递归方法怎么写的时候，举一个最简单的例子，照着例子，把最后几步写出来，
 就是最后的回溯方法
 
 */
class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var isVisited = Array(repeating: false, count: nums.count)
        var path = [Int]()
        dfs(&res, &path, &isVisited, nums)

        return res
    }
    
    func dfs(_ res: inout [[Int]], _ path: inout [Int], _ isVisited: inout [Bool], _ nums: [Int]) {
        guard path.count != nums.count else {
            res.append(path)
            return
        }
        for (i, num) in nums.enumerated() where !isVisited[i] {
            path.append(num)
            isVisited[i] = true
            dfs(&res, &path, &isVisited, nums)
            isVisited[i] = false
            path.removeLast()
        }
        
    }
}
