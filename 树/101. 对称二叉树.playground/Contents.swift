import UIKit

//https://leetcode-cn.com/problems/symmetric-tree/

/**
 * Definition for a binary tree node.
 * 47 递归
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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        return isSymmetricHelper(root.left, root.right)
    }
    
    func isSymmetricHelper(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil && right == nil {
            return true
        }
        // 和大脑的思路是一样的
        if let left = left , let right = right, left.val == right.val {
            return isSymmetricHelper(left.left, right.right) && isSymmetricHelper(left.right, right.left)
        }else {
            return false
        }
    }
    
}
