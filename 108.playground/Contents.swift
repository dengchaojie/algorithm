
//let nums = [1,2,3]
//let count = nums.count
//let index = count / 2
//let leftA = Array(nums[0...index-1])
//let rightA = Array(nums[(index+1)...(count-1)])

 /// Definition for a binary tree node.
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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        let count = nums.count
        if count == 0 {
            return nil
        }
        if count == 1 {
            return TreeNode.init(nums[0])
        }
        if count == 2 {
            let node = TreeNode.init(nums[1])
            node.left = TreeNode.init(nums[0])
            return node
        }

        let index = count / 2
        let c = nums[index]
        
        let node = TreeNode.init(c)
        node.left = TreeNode.init(index-1)
        node.right = TreeNode.init(index+1)

        let leftA = Array(nums[0...(index-1)])
        node.left!.left = self.sortedArrayToLeftBST(leftA)
        
        let rightA = Array(nums[(index+1)...(count-1)])
        node.right!.left = self.sortedArrayToLeftBST(rightA)
        return node
    }
    
    func sortedArrayToLeftBST(_ nums: [Int]) -> TreeNode? {
        let count = nums.count
        if count == 0 {
            return nil
        }
        if count == 1 {
            return TreeNode.init(nums[0])
        }
        if count == 2 {
            let node = TreeNode.init(1)
            node.left = TreeNode.init(0)
            return node
        }
        
        let node = TreeNode.init(count - 1)
        node.left = self.sortedArrayToLeftBST(nums)

        return node
    }
    
    
}


let obj = Solution.init()
//print(obj.sortedArrayToBST([]) ?? "default value0")
//print(obj.sortedArrayToBST([-10]) ?? "default value1")
print(obj.sortedArrayToBST([-10,-3]) ?? "default value2")
//print(obj.sortedArrayToBST([-10,-3,0]) ?? "default value3")
//print(obj.sortedArrayToBST([-10,-3,0,5]) ?? "default value4")
//print(obj.sortedArrayToBST([-10,-3,0,5,9]) ?? "default value5")
