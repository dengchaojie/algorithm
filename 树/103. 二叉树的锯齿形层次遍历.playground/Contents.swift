import UIKit

//https://leetcode-cn.com/problems/binary-tree-zigzag-level-order-traversal/
/*08
 
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
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        var isReversed = false
        guard let root = root else {
            return res
        }
        var currentLevel = [root]
        while !currentLevel.isEmpty {
            let vals = currentLevel.map { $0.val }
            res.append(isReversed ? vals.reversed() : vals)
            
            isReversed = !isReversed
            currentLevel = currentLevel.flatMap { [$0.left, $0.right]}.compactMap { $0 }
            
        }
        return res
    }
}


