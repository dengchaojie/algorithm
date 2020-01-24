import UIKit

//https://leetcode-cn.com/problems/path-sum/
// 54
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
// 08 找一条路，如果等于sum，结束。否在找一条
// recursion
// iterate
class Solution {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        // 如果root是空的，那么不存在
        guard let root = root else {
            return false
        }
        // 如果当前节点是叶子节点，且val等于sum，那么这是一条路径
        if root.val == sum && root.left == nil && root.right == nil {
            return true
        }
        // 递归调用
        return hasPathSum(root.left, sum - root.val) || hasPathSum(root.right, sum - root.val)
    }
}
