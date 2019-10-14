//https://leetcode-cn.com/problems/convert-bst-to-greater-tree/


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

// di gui
class Solution {
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        var sum = 0
        inorder2(root, &sum)
        
        return root
    }

    func inorder2(_ root: TreeNode?, _ sum: inout Int) -> Void {
        guard let root = root else {
            return
        }
        if let right = root.right {
            inorder2(right, &sum)
        }
        sum = sum + root.val
        root.val = sum
        
        if let left = root.left {
            inorder2(left, &sum)
        }
        
    }
}



