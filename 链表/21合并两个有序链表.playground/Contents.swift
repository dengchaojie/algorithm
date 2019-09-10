//https://leetcode-cn.com/problems/merge-two-sorted-lists/


//Definition for singly-linked list.
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
      self.val = val
      self.next = nil
  }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var temp1 = l1// dan ge node
        var temp2 = l2// dan ge node
        let dummy = ListNode(0)
        var lastNode = dummy// dan ge node
        while let t1 = temp1 , let t2 = temp2 {
            if t1.val < t2.val {//zai zhe ge node qian cha ru
                lastNode.next = t1
                temp1 = t1.next
            }else {
                lastNode.next = t2
                temp2 = t2.next
            }
            lastNode = lastNode.next!
        }
        if temp2 == nil {
            lastNode.next = temp1
        }
        if temp1 == nil {
            lastNode.next = temp2
        }
        return dummy.next
        
    }
}
