import UIKit

//https://leetcode-cn.com/problems/add-two-numbers/


/**
 * Definition for singly-linked list.
 * 04
 */
 public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
}

// 递归遍历
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else {
            return l2
        }
        guard let l2 = l2 else {
            return l1
        }
        // 先计算第一个节点，值是2个链表第一个节点的和，对10取余
        let outputNode = ListNode((l1.val + l2.val) % 10)
        // 如果和大于等于10
        if l1.val + l2.val >= 10 {
            // 下面2个节点的和，在和链表1，在做一次加法
            outputNode.next = addTwoNumbers(addTwoNumbers(l1.next, l2.next), ListNode(1))
        } else {
            // 那么next的值是下一个节点的和
            outputNode.next = addTwoNumbers(l1.next, l2.next)
        }
        return outputNode
    }
}

//class Solution {
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        let result = ListNode(0)
//        var p1 = l1
//        var p2 = l2
//        var jinWei = 0
//        while p1?.next != nil && p2?.next != nil {
//            let sum = p1!.val + p2!.val + jinWei
//            if sum >= 10 {
//                jinWei = 1
//            }else {
//                jinWei = 0
//            }
//            p1?.val = sum
//            p1 = p1?.next
//            p2 = p2?.next
//        }
//        if p1?.next == nil {
//
//        }
//        if p2?.next == nil {
//
//        }
//
//        return result.next
//    }
//}
