import UIKit

//https://leetcode-cn.com/problems/balanced-binary-tree/

//32
//
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
// 深度优先遍历
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return checkHeight(root) != -1
    }
    
    func checkHeight(_ root: TreeNode?) -> Int {
        // 如果是空的，那么高度是0
        guard let root = root else {
            return 0
        }
        //递归遍历到叶子节点
        let leftHei = checkHeight(root.left)
        let rightHei = checkHeight(root.right)
        if leftHei == -1 || rightHei == -1 {
            return -1
        }
        if abs(leftHei - rightHei) > 1 {
            return -1
        }
        return max(leftHei, rightHei) + 1
    }
}

//将数组转成二叉树
