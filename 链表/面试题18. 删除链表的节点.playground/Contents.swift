//https://leetcode-cn.com/problems/shan-chu-lian-biao-de-jie-dian-lcof/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
        guard let head = head else {
            return nil
        }
        if head.val == val {
            return head.next
        }
        let dummy = ListNode(0)
        dummy.next = head
        var p = head
        var q = head.next
        while q != nil {
            if q!.val == val {
                p.next = q?.next
                //在这儿执行失败，因为没有结束循环
                q = nil
            }else {
                p = q!
                q = q?.next
            }
        }
        
        return dummy.next
    }
}
