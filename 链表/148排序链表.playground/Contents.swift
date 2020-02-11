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
//4->2->1->3     -1->5->3->4->0
//2 1 3 4        -1 3   4 0 5
//1 2 3 4        -1 3 0 4 5
// -1 0 3 4 5
class Solution {
    //分割和合并
    func sortList3(_ head: ListNode?) -> ListNode? {
        // 分割
        if head == nil || head?.next == nil {
            return head
        }
        var slow = head, fast = head?.next
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        let post = slow?.next
        slow?.next = nil
        var left = sortList3(head)
        var right = sortList3(post)
        // 合并
        var h = ListNode(0)
        let res = h
        while left != nil && right != nil {
            if left!.val < right!.val {
                h.next = left
                left = left?.next
            }else {
                h.next = right
                right = right?.next
            }
            h = h.next!
        }
        h.next = left != nil ? left : right
        return res.next
    }
    //相邻元素比较，如果前者比后者大，换位置
    func sortList2(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return head
        }
        let dummy = ListNode(-100)
        var prev = head
        dummy.next = prev
        var post = prev?.next
        var isContinue = false
        while post != nil {
            if prev!.val > post!.val {
                let next = post?.next
                post?.next = prev
                prev?.next = next
                let temp = prev
                prev = post
                post = temp
                isContinue = true
            }else {
                prev = post
                post = post?.next
            }
            if post == nil {
                if isContinue {
                    isContinue = false
                    post = dummy.next
                }else {
                    break
                }
            }
        }
        return dummy.next
    }
    
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
let res = obj.sortList3(l0)
var temp = res
while let t = temp {
    print(t.val)
    temp = t.next
}

