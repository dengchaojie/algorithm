
///https://leetcode-cn.com/problems/reverse-linked-list/
///  Definition for singly-linked list.
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
      self.val = val
      self.next = nil
  }
}
// die dai
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        let newHead = ListNode.init(head!.val)
        var temp = head?.next
        while temp != nil {
            temp?.next
            temp = temp?.next
        }
        
        return newHead
    }
    
}



// di gui
