
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

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
// die dai
        var temp: ListNode?
        var first = head
        while first != nil {
            let second = first!.next
            first?.next  = temp
            temp = first
            first = second
        }

        return temp
    }
    // di gui
    func reverseNode(head: ListNode?) -> ListNode? {
        guard let h = head, let next = h.next else {
            return head
        }
        let node = self.reverseNode(head: next)
        next.next = h
        h.next = nil
        return node
    
    }
    
    
}




