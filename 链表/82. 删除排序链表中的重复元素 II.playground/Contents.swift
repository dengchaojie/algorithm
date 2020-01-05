import UIKit

//https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list-ii/


/**
 * Definition for singly-linked list.
 * 有序的，删除重复的
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
      self.val = val
      self.next = nil
    }
}

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var mutArr = [Int]()
        var sameArr = [Int]()
        let result: ListNode = ListNode.init(0)
        var p = head
        while p != nil {
            
            if sameArr.contains(p!.val) {
                if mutArr.contains(p!.val) {
                    let index = mutArr.firstIndex(of: p!.val)
                    mutArr.remove(at: index!)
                }
                
            }else {
                sameArr.append(p!.val)
                mutArr.append(p!.val)
            }
            p = p!.next
        }
        var lastNode: ListNode? = nil
        for item in mutArr {
            let temp = ListNode.init(item)
            if lastNode == nil {
                lastNode = temp
                result.next = lastNode
            } else {
                lastNode?.next = temp
                lastNode = temp
            }
            
        }
        return result.next
    }
    
    // 遍历链表，用next.next替换next
    func deleteDuplicates2(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let dummy = ListNode.init(0)
        dummy.next = head
        var node = dummy
        while node.next != nil && node.next?.next != nil {
            if node.next?.val == node.next?.next?.val {
                let val = node.next?.val
                while node.next != nil && node.next?.val == val {
                    node.next = node.next?.next
                }
            }else {
                node = node.next!
            }
        }
        return dummy.next
        
    }
    
    func printLinkedList(_ head: ListNode?) {
        var p = head
        while p != nil {
            print(p!.val)
            p = p?.next
        }
        
    }
}


let node1 = ListNode.init(1)
let node2 = ListNode.init(2)
let node3 = ListNode.init(3)
let node4 = ListNode.init(3)
let node5 = ListNode.init(4)
let node6 = ListNode.init(4)
let node7 = ListNode.init(5)
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6
node6.next = node7

let obj = Solution.init()
let result = obj.deleteDuplicates2(node1)
obj.printLinkedList(result)

//let node1 = ListNode.init(1)
//let node2 = ListNode.init(1)
//let node3 = ListNode.init(1)
//
//let node4 = ListNode.init(2)
//let node5 = ListNode.init(3)
//
//node1.next = node2
//node2.next = node3
//node3.next = node4
//node4.next = node5
//
//
//let obj = Solution.init()
//let result = obj.deleteDuplicates2(node1)
//obj.printLinkedList(result)
