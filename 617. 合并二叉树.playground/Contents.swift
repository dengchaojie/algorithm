//https://leetcode-cn.com/problems/merge-two-binary-trees/
//di gui
//  Definition for a binary tree node.
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
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        guard let tr1 = t1 else {
            return t2
        }
        guard let tr2 = t2 else {
            return t1
        }
        let resTree = TreeNode.init(tr1.val + tr2.val)
        resTree.left = mergeTrees(tr1.left, tr2.left)
        resTree.right = mergeTrees(tr1.right, tr2.right)
        return resTree
    }
}

let t1 = TreeNode.init(1)
t1.left = TreeNode.init(3)

let t2 = TreeNode.init(2)
t2.left = TreeNode.init(1)
t2.right = TreeNode.init(3)

let obj = Solution()
let new = obj.mergeTrees(t1, t2)
print(new?.val)
print(new?.left?.val)
print(new?.right?.val)
