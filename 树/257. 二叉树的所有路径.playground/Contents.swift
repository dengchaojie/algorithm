import UIKit

//https://leetcode-cn.com/problems/binary-tree-paths/
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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var paths = [String]()
        guard let root = root else {
            return paths
        }
        dfs(root, &paths, "\(root.val)")
        return paths
    }
    
    func dfs(_ root: TreeNode?, _ paths: inout [String], _ path: String)
        -> Void{
//            paths.append(path)
            if root?.left == nil && root?.right == nil {
                paths.append(path)
                return
            }
            if let left = root?.left {
                dfs(left, &paths, path + "->\(left.val)")
            }
            if let right = root?.right {
                dfs(right, &paths, path + "->\(right.val)")
            }
    }
    
}

let root = TreeNode(1)
let node2 = TreeNode(2)
let node3 = TreeNode(3)
let node5 = TreeNode(5)
root.left = node2
root.right = node3
node2.right = node5
let obj = Solution()
obj.binaryTreePaths(root)


