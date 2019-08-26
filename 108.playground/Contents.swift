
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
            let node = TreeNode.init(nums[0])
            node.left = nil
            node.right = TreeNode.init(nums[1])
            return node
        }
        if count == 3 {
            let node = TreeNode.init(nums[1])
            node.left = TreeNode.init(nums[0])
            node.right = TreeNode.init(nums[2])
            return node
        }
        let index = count / 2 + count % 2
        let c = nums[index-1]
        
        let node = TreeNode.init(c)
        let leftA = Array(nums[0...(index-2)])
        node.left = self.sortedArrayToBST(leftA)
        
        let rightA = Array(nums[(index)...(count-1)])
        node.right = self.sortedArrayToBST(rightA)
        

        return node
    }
}


let obj = Solution.init()
//print(obj.sortedArrayToBST([]) ?? "default value0")
//print(obj.sortedArrayToBST([-10]) ?? "default value1")
//print(obj.sortedArrayToBST([-10,-3]) ?? "default value2")
//print(obj.sortedArrayToBST([-10,-3,0]) ?? "default value3")
//print(obj.sortedArrayToBST([-10,-3,0,5]) ?? "default value4")
print(obj.sortedArrayToBST([-10,-3,0,5,9]) ?? "default value5")
//print(obj.sortedArrayToBST([-10,-3,0,5,9, 10]) ?? "default value5")

//print(obj.sortedArrayToBST([-10,-3,0,5,9,10, 11]) ?? "default value5")

