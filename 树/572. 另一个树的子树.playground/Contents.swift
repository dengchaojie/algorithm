import UIKit

//https://leetcode-cn.com/problems/subtree-of-another-tree/
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
// 12
class Solution {
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        // 如果s是空的，那么不存在子树
        guard let s = s else {
            return false
        }
        // 如果s和t满足sameTree
        // 或者s的左子树上存在和t相同的
        // 或者s的右子树上存在和t相同的
        return sameTree(s, t) || isSubtree(s.left, t) || isSubtree(s.right, t)
    }
    
    func sameTree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        if s == nil && t == nil {
            return true
        }
        // 执行到这里，说明有一个不为空，那么就不是相同的子树
        if s == nil || t == nil {
            return false
        }
        // 如果当前节点的值相同，且左节点和右节点的值也相等，那么相同子树
        return s?.val == t?.val && sameTree(s?.left, t?.left) && sameTree(s?.right, t?.right)
    }
}

