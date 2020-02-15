//https://leetcode-cn.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/

/*
 前序遍历 preorder = [3,9,20,15,7]
 中序遍历 inorder = [9,3,15,20,7]
前序：
打印节点
跳左子树
跳右子树

 前序的第一个元素是根节点，把中序分成了左子树和右子树
 */
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
    var preIdx = 0
    var preorder:[Int]?
    var inorder:[Int]?
    var map = [Int:Int]()
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        self.preorder = preorder
        self.inorder = inorder
        for i in 0..<inorder.count {
            map[inorder[i]] = i
        }
        return helper(0, inorder.count)
    }
    
    func helper(_ indexLeft: Int, _ indexRight: Int) -> TreeNode? {
        if indexLeft == indexRight {
            return nil
        }
        let rootVal = preorder![preIdx]
        let root = TreeNode(rootVal)
        let index = map[rootVal]
        preIdx += 1
        // build left tree
        root.left = helper(indexLeft, index!)
        
        // build right tree
        root.right = helper(index!+1, indexRight)

        return root
        
    }
    
//    func dfs() -> Void {
//
//    }
//
//    func bfs() -> Void {
//
//    }
    
    
}
