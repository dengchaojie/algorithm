import UIKit

//https://leetcode-cn.com/problems/same-tree/


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
// 01 递归
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard let p = p else {
            return q == nil
        }
        guard let q = q else {
            return false
        }
        if p.val != q.val  {
            return false
        }
        return isSameTree(p.left, q.left)
            && isSameTree(p.right, q.right)
        
    }
}
let p = TreeNode(1)
let node2 = TreeNode(2)
let node3 = TreeNode(3)
let q = TreeNode(1)
p.left = node2
p.right = node3
q.left = node2
q.right = node3

let obj = Solution()
obj.isSameTree(p, q)

