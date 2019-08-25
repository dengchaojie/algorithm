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
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        var depthLeft = 0
        var depthRight = 0
        if let left = root.left {
            depthLeft = self.maxDepth(left)
        }
        if let right = root.right {
            depthRight = self.maxDepth(right)
        }
        
        if depthLeft > depthRight {
            return depthLeft + 1
        }else {
            return depthRight + 1

        }
        
    }
}
