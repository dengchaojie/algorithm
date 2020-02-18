

//https://leetcode-cn.com/problems/flatten-binary-tree-to-linked-list/

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
//转化成右子树
class Solution {
    func flatten(_ root: TreeNode?) {
        dfs(root)
    }
    
    func dfs(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return root
        }
        var root = root
        if root?.left == nil && root?.right == nil {
            return root
        }
        let left = root?.left, right = root?.right
        root?.left = nil
        if let left = lseft {
            root?.right = left
            root = dfs(left)
            //root最终被赋值为左子树的叶子节点
        }
        if let right = right {
            root?.right = right
            root = dfs(right)
        }
        return root
    }
    
}
