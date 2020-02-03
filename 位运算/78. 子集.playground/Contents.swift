import UIKit

//https://leetcode-cn.com/problems/subsets/
// 28 经典的深度优先搜索
class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        dfs(nums, &res, &path, 0)
        return res
    }

    func dfs(_ nums: [Int], _ res: inout [[Int]], _ path: inout [Int], _ index: Int) {
        print("----")
        res.append(path)
        print(res)
        for i in index..<nums.count {
            print("i == \(i)")
            path.append(nums[i])
            print("path.append == \(path)")
            dfs(nums, &res, &path, i + 1)
            path.removeLast()
            print("path.removeLast == \(path)")
        }
    }
    
}
let obj = Solution()
obj.subsets([1,2])
