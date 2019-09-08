
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
        var temp = head?.next
        head?.next = nil
        temp = temp?.next
        
        
    }
    
    
}



// di gui
