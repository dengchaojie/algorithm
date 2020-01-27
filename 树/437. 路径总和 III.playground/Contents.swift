import UIKit

//https://leetcode-cn.com/problems/path-sum-iii/


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
//递归遍历每个node，计算产生sum的可能数量
class Solution {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        guard let node = root else {
            return 0
        }
        //
        let res = totalPath(node, sum)
        let left = pathSum(root?.left, sum)
        let right = pathSum(root?.right, sum)
        return res + left + right
        
    }
    
    func totalPath(_ node: TreeNode?, _ sum: Int) -> Int {
        guard let node = node else {
            return 0
        }
        var res = 0
        if sum == node.val {
            res += 1
        }
        res += totalPath(node.left, sum - node.val)
        res += totalPath(node.right, sum - node.val)
        return res
    }
    
}

