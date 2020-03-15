import UIKit

//let res = 10^5// 这个二进制运算，或
//let res2 = pow(10, 5)
//let a = Double(5)
//let b = Double(2)
//let res = a / b

//https://leetcode-cn.com/problems/sqrtx/
// 09
// 二叉树搜索。因为x/2+1的平方是x+1+x^2/4，一定大于x，所以right从x/2+1递减
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
    func mySqrt(_ x: Int) -> Int {
        if x <= 0 {
            return 0
        }
        var left = 0, right = x / 2
        while left <= right {
            let mid = (right - left) / 2 + left
            if mid * mid == x {
                return mid
            } else if mid * mid < x {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return right
    }
    // niu dun
    func mySqrt2(_ x: Int) -> Int {
        if x < 2 {
            return x
        }
        var x0 = Double(x)
        var x1 = (x0 + Double(x) / x0) / 2
        while abs(x0 - x1) >= 1 {
            x0 = x1
            x1 = (x0 + Double(x) / x0) / 2
        }
        return Int(x1)
    }
    
    // 38
    func luckyNumbers (_ matrix: [[Int]]) -> [Int] {
        if matrix.count == 1 && matrix[0].count == 1 {
            return matrix[0]
        }
        var rows = [Int]()
//        var culs = [Int]()
        let m = matrix.count
        let n = matrix[0].count
        
        for i in 0..<m {
            var min = Int.max
            for j in 0..<n {
                if matrix[i][j] < min {
                    min = matrix[i][j]
                }
            }
            rows.append(min)
        }
        for i in 0..<n {
            var max = 0
            for j in 0..<m {
                if matrix[j][i] > max {
                    max = matrix[j][i]
                }
            }
            if rows.contains(max) {
                return [max]
            }
        }
        return [Int]()
    }
    // 中序遍历，左根右
    func balanceBST(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return root
        }
        var temp = [Int]()
        _helper(root, &temp)
        print(temp)
        
        return buildTree(temp, 0, temp.count - 1)
    }
    // zhong xu
    func _helper(_ node: TreeNode?, _ arr: inout [Int]) {
        guard let root = node else { return }
        if root.left != nil {
            _helper(root.left, &arr)
        }
        
        arr.append(root.val)
        if root.right != nil {
            _helper(root.right, &arr)
        }
        
    }// qian xu, fei di gui, gao dui zhan
    func _helper4(_ node: TreeNode?) -> [Int] {
        var res = [Int]()
        var stack = [TreeNode]()
        var currentNode = node
        var isLeft = true
        while currentNode != nil {

            if currentNode?.left != nil {
                currentNode = currentNode?.left
                
            }else {
                if currentNode?.right != nil {
                    currentNode = currentNode?.right
                    

                }else {
                    
                }
            }
        }
        return res
        
    }
    // qian xu
    func _helper2(_ node: TreeNode?, _ arr: inout [Int]) {
        guard let root = node else { return }
        arr.append(root.val)
        if root.left != nil {
            _helper2(root.left, &arr)
        }
        
        if root.right != nil {
            _helper2(root.right, &arr)
        }
        
    }
    // hou xu
    func _helper3(_ node: TreeNode?, _ arr: inout [Int]) {
        guard let root = node else { return }
        if root.left != nil {
            _helper3(root.left, &arr)
        }
        
        if root.right != nil {
            _helper3(root.right, &arr)
        }
        arr.append(root.val)

    }
    
    func buildTree(_ arr: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        if left > right {
            return nil
        }
        let mid = left + (right-left)/2
        let root = TreeNode(arr[mid])
        root.left = buildTree(arr, left, mid-1)
        root.right = buildTree(arr, mid+1, right)
        return root
    }
    
    
}
let root = TreeNode(1)
let node2 = TreeNode(2)
let node3 = TreeNode(3)
let node4 = TreeNode(4)
root.right = node2
node2.right = node3
node3.right = node4
let obj = Solution()
//obj.balanceBST(root)
let root2 = TreeNode(7)
let nod1 = TreeNode(1)
let nod2 = TreeNode(2)
let nod4 = TreeNode(4)
let nod5 = TreeNode(5)
let nod6 = TreeNode(6)
let nod8 = TreeNode(8)
let nod9 = TreeNode(9)
root2.left = nod1
nod1.right = nod2
nod1.left = nod5
nod2.left = nod4
root2.right = nod6
nod6.left = nod8
nod6.right = nod9

let a = TreeNode(1)
let b = TreeNode(2)
let c = TreeNode(3)
let d = TreeNode(4)
let e = TreeNode(5)
let f = TreeNode(6)
let g = TreeNode(7)
let h = TreeNode(8)
let i = TreeNode(9)
a.left = b
b.left = d
d.left = g
d.right = h
a.right = c
c.left = e
e.right = i
c.right = f
//var temp = [Int]()
//obj._helper2(a, &temp)
//print(temp)

//var temp3 = [Int]()
//obj._helper(a, &temp3)
//print(temp3)
//
//var temp2 = [Int]()
//obj._helper3(a, &temp2)
//print(temp2)

obj._helper4(a)


/*
 
 [3,7,8],
 [9,11,13],
 [15,16,17]
 
 [1,10,4,2],
 [9,3,8,7],
 [15,16,17,12]
 */

class CustomStack {
    var mut = [Int]()
    var maxSize: Int!
    init(_ maxSize: Int) {
        self.maxSize = maxSize
    }
    
    func push(_ x: Int) {
        if mut.count < maxSize {
            mut.append(x)
        }
    }
    
    func pop() -> Int {
        if mut.isEmpty {
            return -1
        }else {
            return mut.removeLast()
        }
    }
    
    func increment(_ k: Int, _ val: Int) {
        if k < mut.count {
            for i in 0..<k {
                mut[i] = mut[i] + val
            }
        }else {
            for i in 0..<mut.count {
                mut[i] = mut[i] + val
            }
        }
    }
}
