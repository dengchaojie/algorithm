/*
 给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。
 
 如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。
 
 您可以假设除了数字 0 之外，这两个数都不会以 0 开头。
 
 示例：
 
 输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 0 -> 8
 原因：342 + 465 = 807
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/add-two-numbers
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
*/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int)
    {
        self.val = val
        self.next = nil
    }
    
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var returnListNode: ListNode? = nil
        
        if let l1 = l1,
            let l2 = l2
        {
            var currentListNodeOfL1 = l1
            var currentListNodeOfL2 = l2
            var strL1 = "\(currentListNodeOfL1.val)"
            var strL2 = "\(currentListNodeOfL2.val)"
            
            repeat {
                strL1 = strL1 + "\(currentListNodeOfL1.next!.val)"
                currentListNodeOfL1 = currentListNodeOfL1.next!
                
            }while (currentListNodeOfL1.next != nil)
            
            repeat {
                strL2 = strL2 + "\(currentListNodeOfL2.next!.val)"
                currentListNodeOfL2 = currentListNodeOfL2.next!
                
            }while (currentListNodeOfL2.next != nil)
            
            var strL1Reverse = ""
            let strL1ReverseArray = strL1.reversed()
            for (_, c) in strL1ReverseArray.enumerated() {
                let str = "\(c)"
                strL1Reverse = strL1Reverse + str
            }
            
            var strL2Reverse = ""
            let strL2ReverseArray = strL2.reversed()
            for (_, c) in strL2ReverseArray.enumerated() {
                let str = "\(c)"
                strL2Reverse = strL2Reverse + str
                
            }
            
            let intL1 = Int(strL1Reverse)!
            let intL2 = Int(strL2Reverse)!
            let sum = intL1 + intL2
            let strSum = "\(sum)"
            var nodeArray: Array = Array<ListNode>()
            
            for (_, c) in strSum.enumerated() {
                let str = "\(c)"
                let itemListNode = ListNode.init(Int(str)!)
                nodeArray.append(itemListNode)
            }
            returnListNode = nodeArray[nodeArray.count - 1]
            for (index, itemListNode) in nodeArray.enumerated() {
//                let n = nodeArray.count - 1 - index
                if index == (0) {
                    //                    itemListNode.next = nil
                }else
                {
                    itemListNode.next = nodeArray[index-1]
                }
            }
            return returnListNode
            
        }else
        {
            if l1 == nil
            {
                return l2
            }
            if l2 == nil
            {
                return l1
            }
        }
        
        
        return returnListNode
    }
}

let l1 = ListNode.init(2)
l1.next = ListNode.init(4)
l1.next!.next = ListNode.init(3)
l1.next!.next!.next = ListNode.init(8)

let l2 = ListNode.init(5)
l2.next = ListNode.init(6)
l2.next!.next = ListNode.init(4)

let cl = Solution.init()
let l3 = cl.addTwoNumbers(l1, l2)

var currentListNodeOfL1 = l3
repeat
{
    if let current = currentListNodeOfL1 {
        print(current.val)
        if let nextNode = current.next {
            currentListNodeOfL1 = nextNode
        }else
        {
            currentListNodeOfL1 = nil
        }
    }
    
}while(currentListNodeOfL1 != nil)

