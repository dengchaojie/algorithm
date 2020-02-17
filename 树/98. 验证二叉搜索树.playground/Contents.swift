//https://leetcode-cn.com/problems/validate-binary-search-tree/

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
/*
    5
  3    6
2  1  7  8
 
 */

class Solution {
    
    func isValidBST(_ root: TreeNode?) -> Bool {
        return _helper(root, nil, nil)
    }
    
    func _helper(_ root: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {
        guard let root = root else {
            return true
        }
        if let min = min, root.val <= min {
            return false
        }
        if let max = max, root.val >= max {
            return false
        }
        return _helper(root.left, min, root.val) && _helper(root.right, root.val, max)
    }
    
    func isValidBST2(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return false
        }
        var isLeft = true, isRight = true
        // 判断左子树减小
        if let left = root.left {
            if root.val > left.val {
                isLeft = isValidLeft(left)
            }else {
                return false
            }
        }
        
        // 判断右子树增大
        if let right = root.right {
            if root.val < right.val {
                isRight = isValidLeft(right)
            }else {
                return false
            }
        }

        return isLeft && isRight
    }
    // 递归
    func isValidLeft(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        if let left = root.left, let right = root.right{
            if root.val > left.val && root.val > right.val {
                return true
            } else {
                return false
            }
        }
        if root.left == nil, let right = root.right {
            return isValidLeft(right)
        }
        if root.right == nil, let left = root.left {
            return isValidLeft(left)
        }
        return isValidLeft(root.left) && isValidLeft(root.right)


        
        
    }
    
    func isValidRight(_ root: TreeNode) -> Bool {
        
    }
    
    
}
