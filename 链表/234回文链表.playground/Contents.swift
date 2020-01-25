//https://leetcode-cn.com/problems/palindrome-linked-list/

//  Definition for singly-linked list.
// 思路：在遇到相同val之前，将前面的一半链表反转，和后面的一半链表对比
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
      self.val = val
      self.next = nil
  }
}
// 28
//1-2-3-4-4-3-2-1
//
//    3
//        4
//            2
//                nil
// 1-2-3-2-1
//
//     3
//          1

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var fast = head, slow = head, dummy: ListNode? = nil
        // dummy是前半部分的头指针，slow是后版分的头指针
        while fast != nil && fast?.next != nil  {
            // 链表前半部分反转
            fast = fast?.next?.next
            let temp = slow?.next
            slow?.next = dummy
            dummy = slow
            slow = temp
            
        }
        // 当链表长度为奇数时
        if fast != nil {
            // 这个判断不可能成立啊？待会儿验证下
            if slow == nil {
                return true
            }
            // 需要后移一位
            slow = slow?.next
        }
        while slow != nil {
            // 逐次反向遍历
            if slow?.val != dummy?.val {
                return false
            }else {
                slow = slow?.next
                dummy = dummy?.next
            }
        }
        return true
    }
}


//class Solution {
//    func isPalindrome(_ head: ListNode?) -> Bool {
//        var p0 = head
//        if p0 == nil {
//            return true
//        }
//        var p1 = head?.next
//        guard let temp = p1 else {
//            return true
//        }
//
//        if p1?.next == nil {
//            if temp.val == p0?.val {
//                return true
//            }else {
//                return false
//            }
//        }
//        while let t0 = p0, let t1 = p1, t0.val != t1.val {
//            // zuo fan zhuan
//            p1?.next = p0
//            p0 = p1
//            p1 = p1?.next
//        }
//        while let t0 = p0, let t1 = p1, t0.val == t1.val {
//
//                p0 = p0?.next
//                p1 = p1?.next
//
//        }
//        if p0?.next == nil && p1?.next == nil {
//            return true
//        }
//
//        return false
//    }
//}

let head = ListNode.init(1)
let n2 = ListNode.init(2)
let n3 = ListNode.init(2)
let n4 = ListNode.init(1)
head.next = n2
n2.next = n3
n3.next = n4

let obj = Solution.init()
print(obj.isPalindrome(head))

