import UIKit

//https://leetcode-cn.com/problems/remove-linked-list-elements/


  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
  }

class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        guard let head = head else {
            return nil
        }
        let result = ListNode(0)
        result.next = head
        var temp = result
        while temp.next != nil {
            if temp.next?.val == val {
                temp.next = temp.next?.next
            }else {
                temp = temp.next!
            }
        }
        
        return result.next
    }
}
