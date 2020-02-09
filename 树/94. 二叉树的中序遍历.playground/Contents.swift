import UIKit

//https://leetcode-cn.com/problems/binary-tree-inorder-traversal/
/*35
        1
    2       3
 4    5   6   7
 4251637
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
    
    // 递归
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        dfs(&res, root)
        return res
    }
    
    func dfs(_ res: inout [Int], _ root: TreeNode?) {
        guard let root = root else {
            return
        }
        if root.left == nil && root.right == nil {
            res.append(root.val)
            return
        }
        if root.left != nil {
            dfs(&res, root.left)
        }
        res.append(root.val)
        if root.right != nil {
            dfs(&res, root.right)
        }
    }
    // 迭代，参考了答案
    func inorderTraversal2(_ root: TreeNode?) -> [Int] {
        var res = [Int](), stack = [TreeNode]()
        var node = root
        while node != nil || !stack.isEmpty {
            if let currentNode = node {
                stack.append(currentNode)
                node = node?.left
            }else {
                
                let prevNode = stack.removeLast()
                res.append(prevNode.val)
                node = prevNode.right
            }
        }
        
        return res
    }
}

let root = TreeNode(1)
let n2 = TreeNode(2)
let n3 = TreeNode(3)
let n4 = TreeNode(4)
let n5 = TreeNode(5)
let n6 = TreeNode(6)
let n7 = TreeNode(7)

root.left = n2
root.right = n3
n2.left = n4
n2.right = n5
n3.left = n6
n3.right = n7
let obj = Solution()
obj.inorderTraversal2(root)

