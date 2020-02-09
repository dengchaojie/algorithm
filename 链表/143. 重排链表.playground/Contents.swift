import UIKit

//https://leetcode-cn.com/problems/reorder-list/
/*14
 算法：遍历一遍，完成双向链表
 
 reorderList
 // 笨方法，排列好，在新建。这道题不允许
 // 原题定义的是单链表，方法reorderList2不行
 */
public class ListNode {
    public var val: Int
    public var pre: ListNode?
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
// 快慢指针
class ReorderList {
    func reorderList(_ head: ListNode?) {
        if head == nil {
            return
        }
        var prev = head
        var post = head
        
        split(&prev, &post)
        prev = head
        post = reverse(head: &post)
        merge(&prev, &post)
    }
    // 快慢指针
    func split(_ prev: inout ListNode?, _ post: inout ListNode?) {
        while post != nil && post?.next != nil {
            prev = prev?.next
            post = post?.next?.next
        }
        post = prev?.next
        prev?.next = nil
    }
    // 反转链表 1 2 3 4 5
    func reverse( head: inout ListNode?) -> ListNode? {
        var prev = head
        var temp: ListNode?
        while prev != nil {
            let post = prev?.next
            prev?.next = temp
            temp = prev
            prev = post
        }
        return temp
    }
    // 合并
    func merge(_ prev: inout ListNode?, _ post: inout ListNode?) {
        while prev != nil && post != nil {
            let prevNext = prev?.next
            let postNext = post?.next
            
            prev?.next = post
            post?.next = prevNext
            
            prev = prevNext
            post = postNext
        }
    }
    
    func printList(_ list: ListNode?) {
        var node = list
        while node != nil {
            print(node?.val)
            node = node?.next
        }
    }
}



class Solution {
    func reorderList3(_ head: ListNode?) {
        guard var head = head else {
            return
        }
        var node = head
        var tail = ListNode(head.val)
        tail.next = nil
        var step = 1
        while node.next != nil {
            step += 1
            let next = node.next!
            let new = ListNode(next.val)
            new.next = tail
            tail = new
            node = node.next!
        }
        // 3-1;4-1; 5-2;6-2;
        var count = (step % 2 == 0) ? (step / 2 - 1) : (step / 2)
        while count > 0 {
            let oriHead = head.next
            let oriTail = tail.next
            head.next = tail
            tail.next = oriHead
            head = oriHead!
            tail = oriTail!
            count -= 1
        }
        (step % 2) == 0 ? (head.next?.next = nil) : (head.next = nil)
    }
    
    func reorderList2(_ head: ListNode?) {
        guard var head = head else {
            return
        }
        var node = head
        var tail = node
        tail.pre = nil
        var step = 0
        while node.next != nil {
            step += 1
            let next = node.next!
            tail = next
            tail.pre = node
            node = node.next!
        }
        if step == 2 {
            return
        }
//        var p = head, q = tail
        
        var count = (step % 2) == 0 ? (step / 2) : (step / 2 - 1)
        while count == 0 {
            
            let oriHead = head.next
            let oriTail = tail.next
            head.next = tail
            tail.next = oriHead
            head = oriHead!
            tail = oriTail!
            count -= 1
        }
    }
    
    func printList(_ list: ListNode?) {
        var node = list
        while node != nil {
            print(node?.val)
            node = node?.next
        }
    }
}


let head = ListNode(1)
let node2 = ListNode(2)
let node3 = ListNode(3)
let node4 = ListNode(4)
let node5 = ListNode(5)
head.next = node2
node2.next = node3
node3.next = node4
//node4.next = node5
//let obj = Solution()
//obj.reorderList3(head)
//obj.printList(head)
// 1 2 3 4 5 6
//

let obj2 = ReorderList()
obj2.reorderList(head)
obj2.printList(head)
