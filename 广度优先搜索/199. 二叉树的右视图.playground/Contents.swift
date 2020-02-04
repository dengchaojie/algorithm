import UIKit

//https://leetcode-cn.com/problems/binary-tree-right-side-view/
//54
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
// 广度优先搜索
// 使用一个数组，添加TreeNode，始终把每一层的最后一个val
class Solution {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }
        var result = [Int]()
        var nodes = [TreeNode]()
        nodes.append(root)
        while nodes.count > 0 {
            //这个个数是每一层的孩子个数，且最后一个是最右边的孩子
            let size = nodes.count
            for i in 0..<size {
                let node = nodes.removeFirst()
                if i + 1 == size {
                    result.append(node.val)
                }
                // 这个地方加的是当前节点的左右孩子
                // 那么下次进行while时，会遍历同一层的左右孩子
                if node.left != nil {
                    nodes.append(node.left!)
                }
                if node.right != nil {
                    nodes.append(node.right!)
                }
            
            }
            
        }
        
        return result
        
    }
    
    
}

//class Solution {
//    func rightSideView(_ root: TreeNode?) -> [Int] {
//        guard var root = root else {
//            return []
//        }
//        var result = [Int]()
//        result.append(root.val)
//        while root.right != nil {
//            result.append(root.right!.val)
//            root = root.right!
//        }
//
//        return result
//
//    }
//
//
//}
