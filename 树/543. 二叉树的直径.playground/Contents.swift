import UIKit

//https://leetcode-cn.com/problems/diameter-of-binary-tree/
/**
 * Definition for a binary tree node.
 * 22
 * 左右子树最大深度的和
 * recursion
*/
class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    var diameter = 0

    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        maxDepth(root)
        
        return diameter
    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let node = root else {
            return 0
        }
        let (left, right) = (maxDepth(node.left), maxDepth(node.right))
        print("node: \(node.val)")
        print("left: \(left), right: \(right), diameter: \(diameter)")
        //直径为左右子树的最大深度的和，和当前直径的最大值
        diameter = max(diameter, (left + right))
        print("diameter: \(diameter)")
        print("max(left, right) + 1 : \(max(left, right) + 1)")
        print("--------")
        // 当前节点的左右子树的深度的最大值，加上1，为当前节点的最大深度，并返回给上层调用
        return max(left, right) + 1
    }
    
}

let node1 = TreeNode.init(1)
let node2 = TreeNode.init(2)
let node4 = TreeNode.init(4)
let node5 = TreeNode.init(5)
let node3 = TreeNode.init(3)
let node7 = TreeNode.init(7)
let node8 = TreeNode.init(8)
let node9 = TreeNode.init(9)


node1.left = node2
node2.left = node4
node2.right = node5
node1.right = node3
node3.left = node7
node3.right = node8
node7.left = node9

let obj = Solution()
obj.diameterOfBinaryTree(node1)

/// 0 0
/// 1 0
/// 2 1
/// 3 2
/*
 node: 4
 left: 0, right: 0, diameter: 0
 diameter: 0
 max(left, right) + 1 : 1
 --------
 node: 5
 left: 0, right: 0, diameter: 0
 diameter: 0
 max(left, right) + 1 : 1
 --------
 node: 2
 left: 1, right: 1, diameter: 0
 diameter: 2
 max(left, right) + 1 : 2
 --------
 node: 1
 left: 2, right: 0, diameter: 2
 diameter: 2
 max(left, right) + 1 : 3
 --------
 
 
 */
