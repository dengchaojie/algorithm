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
        let dummy = ListNode(-1)

        var temp = head
        var tempHead = head?.next
//        print(head?.val as Any)
        while temp != nil
        {
            var node = dummy
            var temp2 = dummy.next
            while temp2 != nil
            {
                if temp!.val <= temp2!.val {

                    break
                }else {
//                    print(temp2!.val)
                    node = temp2!
                    temp2 = temp2!.next
                }
            }
            node.next = temp
            tempHead = temp!.next
            temp?.next = temp2
            temp = tempHead
//            print(temp?.val as Any)
        
        }
        return dummy.next
    }
}

let l0 = ListNode(3)
let l1 = ListNode(1)
let l2 = ListNode(2)
let l3 = ListNode(4)
let l4 = ListNode(0)

l0.next = l1
l1.next = l2
l2.next = l3
l3.next = l4
let obj = Solution()
let res = obj.sortList(l0)
var temp = res
while let t = temp {
    print(t.val)
    temp = t.next
}

