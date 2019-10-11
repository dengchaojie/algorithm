
//https://leetcode-cn.com/problems/invert-binary-tree/
// cong xia wang shang,mei ceng jiao huan zuo you zi shu

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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let ro = root else {
            return root
        }
        // jiao huan zuo you zi shu
        let left = ro.left
        let right = ro.right
        let temp = left
        ro.left = invertTree(right)
        ro.right = invertTree(temp)
        
        return ro
        
    }
}

let t2 = TreeNode.init(2)
t2.left = TreeNode.init(1)
t2.left?.left = TreeNode.init(4)

t2.right = TreeNode.init(3)
t2.right?.left = TreeNode.init(5)

let obj = Solution()
let new = obj.invertTree(t2)
print(new?.val)
print(new?.left?.left?.val)
print(new?.right?.left?.val)
