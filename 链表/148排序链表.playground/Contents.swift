//https://leetcode-cn.com/problems/sort-list/


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
    func sortList(_ head: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var temp = head
        while let t = temp {
            var temp2 = dummy.next
            var node = dummy
            while let t2 = temp2 {
                if t.val < t2.val {
                    t.next = temp2
                    node.next = temp
                    
                    break
                }else {
                    node = t2
                    temp2 = t2.next
                }
            }
            if temp2 == nil {
                node.next = t
            }else {
                
            }
            
            temp = t.next
        }
        return dummy.next
    }
}

let l0 = ListNode(3)
let l1 = ListNode(1)
let l2 = ListNode(2)
l0.next = l1
l1.next = l2
let obj = Solution()
let res = obj.sortList(l1)
var temp = res
while let t = temp {
    print(t.val)
    temp = t.next
}

