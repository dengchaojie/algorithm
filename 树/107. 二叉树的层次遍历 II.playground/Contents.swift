import UIKit

//https://leetcode-cn.com/problems/binary-tree-level-order-traversal-ii/
//28 广度优先搜索 迭代遍历每层，把每层val加入一个数组，在加到总数组里
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
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        guard let root = root else {
            return res
        }
        var currentLevel = [root]
        while !currentLevel.isEmpty {
            let currentNodes = currentLevel.map{ $0.val }
            // 添加本层节点val
            res.insert(currentNodes, at: 0)
            // 添加下层节点
            // 通过flatMap和compactMap，
            // 将left和right放到一个数组里，在进行下次循环
            currentLevel = currentLevel.flatMap { [$0.left, $0.right] }.compactMap{ $0 }
            
        }
        return res
    }
}
let numbers = [1, 2, 3, 4]
let eachNumber3Times = numbers.flatMap { Array(repeating: $0, count: 3) }
print(eachNumber3Times)
let numberStrings = ["1", "2", "3", "four"]
let numbers = numberStrings.compactMap { Int($0) }
print(numbers) // [1, 2, 3]
