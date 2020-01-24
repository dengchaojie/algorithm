import UIKit

//https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/
// 00 iterate the list, jump over duplicates by replacing next with next.next

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
        guard let head = head else {
            return nil
        }
        
        var cur = head
        while cur.next != nil {
            if cur.next?.val == cur.val {
                cur.next = cur.next?.next
            }else {
                cur = cur.next!
            }
        }
        return head
    }
//    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
//        let result = ListNode(0)
//        result.next = head
//        var temp = head
//        while temp != nil {
//            if temp?.next != nil {
//                if temp?.val != temp?.next?.val {
//                    temp = temp?.next
//                }else {
//                    var temp2 = temp?.next?.next
//                    while temp2 != nil && temp2?.val == temp?.val {
//                        temp2 = temp2?.next
//                    }
//                    temp?.next = temp2
//                    temp = temp?.next
//                }
//            }else {
//                temp = temp?.next
//            }
//        }
//        return result.next
//    }
    
    func printList(_ head: ListNode?) -> Void {
        var temp = head
        while temp != nil {
            print(temp?.val)
            temp = temp?.next
        }
        print("--------")
    }
}

let head = ListNode(1)
let node2 = ListNode(1)
let node3 = ListNode(2)
let node4 = ListNode(3)
let node5 = ListNode(3)
head.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
let obj = Solution()
let list = obj.deleteDuplicates(head)
obj.printList(list)

