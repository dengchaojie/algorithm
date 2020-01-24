import UIKit

//https://leetcode-cn.com/problems/middle-of-the-linked-list/
// 43
// 3
// 快慢指针


public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
      self.val = val
      self.next = nil
  }
}
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head, fast = head
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}

//class Solution {
//    func middleNode(_ head: ListNode?) -> ListNode? {
//        var arr = [ListNode]()
//        var count = 0
//        var temp = head
//        var flag = 0
//        while temp != nil {
//            if flag == 0 {
//                arr.append(temp!)
//                flag = 1
//                temp = temp?.next
//            }else {
//                flag = 0
//                temp = temp?.next
//            }
//            count += 1
//        }
//        if count == 1 {
//            return head
//        }
//        if count == 2 {
//            return head?.next
//        }
//        if count == 3 {
//            return head?.next
//        }
//
//        if count % 2 == 0 {
//            if arr.count % 2 == 0 {
//                return arr[arr.count / 2]
//
//            }else {
//                return arr[arr.count / 2].next
//
//            }
//        }else {
//            if arr.count % 2 == 0 {
//                return arr[arr.count / 2 - 1].next
//
//            }else {
//                return arr[arr.count / 2]
//
//            }
//        }
//
//    }
//}
