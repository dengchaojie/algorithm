import UIKit

//https://leetcode-cn.com/problems/swap-nodes-in-pairs/
//02
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
// p c
// 0 1 2 3 4
class Solution {
    // 3个指针
    func swapPairs2(_ head: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        dummy.next = head
        var prev = dummy
        var current = dummy.next
        while current != nil && current?.next != nil {
            let next = current?.next
            let post = current?.next?.next
            
            prev.next = next
            current?.next = post
            next!.next = current
            
            prev = current!
            current = post
        }
        return dummy.next
    }
    
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var p = head
        let node0 = ListNode(0)
        var q: ListNode? = p?.next
        // 1 2 3 4
        while q != nil {
            //完成一次交换
            if node0.next == nil {// 只赋值一次
                node0.next = q!
                let nextNext = q?.next
                q?.next = p
                p?.next = nextNext
                // 2 1 3 4
                q = nextNext
            }else {
                let nextNext = q?.next
                p?.next = nextNext
                nextNext?.next = q
                q?.next = nextNext?.next
                p = q
                q = nextNext?.next
                // 2 1  4 3
               
            }
            
        }
        return node0.next
    }
}
