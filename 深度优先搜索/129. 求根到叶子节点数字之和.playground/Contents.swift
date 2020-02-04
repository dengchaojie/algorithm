import UIKit

//https://leetcode-cn.com/problems/sum-root-to-leaf-numbers/


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
    var result = 0
    func sumNumbers(_ root: TreeNode?) -> Int {
        if root == nil {
            return result
        }
        dfs(root!, 0)
        
        return result
    }
    
    func dfs(_ root: TreeNode, _ sb: Int) {
        //sb为搜索到root的父节点的和，所以sb*10
        let temp = sb * 10 + root.val
        // 是叶子，结束深度搜索
        if root.left == nil && root.right == nil {
            result += temp
            return
        }
        // 如果有左孩子，继续深度搜索
        if root.left != nil {
            dfs(root.left!, temp)
        }
        // 如果有右孩子，继续深度搜索
        if root.right != nil {
            dfs(root.right!, temp)
        }
    }
    
}
//class Solution {
//    func sumNumbers(_ root: TreeNode?) -> Int {
//
//        var res = [[String]]()
//        var path = [String]()
//
//        dfs(root, &res, &path)
//        var result = 0
//        for item in res {
//            result += Int(item.joined())!
//        }
//        return result
//    }
//
//    func dfs(_ root: TreeNode?, _ res: inout [[String]], _ path: inout [String]) {
//        if root == nil {
//            return
//        }
//        res.append(path)
//        dfs(root?.left, &res, &path)
//        dfs(root?.right, &res, &path)
//    }
//}
