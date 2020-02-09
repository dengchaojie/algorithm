import UIKit

//https://leetcode-cn.com/problems/binary-tree-level-order-traversal/
/*49
 广度优先搜索
 
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        guard let root = root else {
            return res
        }
        var currentLevel = [root]
        
        while !currentLevel.isEmpty {
            let vals = currentLevel.map { (node) -> Int in
                return node.val
            }
            // 添加当前的vals
            res.append(vals)
            // 设置下一层的node
            currentLevel = currentLevel.flatMap { [$0.left, $0.right] }.compactMap{ $0 }
        }
        return res
    }
    

}
