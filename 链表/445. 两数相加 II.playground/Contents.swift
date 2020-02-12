import UIKit

//let str = "123"
//for item in str {
//    print(Int(String(item))!)
//}

//https://leetcode-cn.com/problems/add-two-numbers-ii/
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
/*40
 1 2 3 4
 */
class Solution {
    //进阶：不改变原node，利用栈来实现
    func addTwoNumbers3(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1, l2 = l2
        var stack1 = [Int]()
        var stack2 = [Int]()
        var res = [Int]()
        while l1 != nil {
            stack1.append(l1!.val)
            l1 = l1?.next
        }
        while l2 != nil {
            stack2.append(l2!.val)
            l2 = l2?.next
        }
        var carry = 0
        while !stack1.isEmpty || !stack2.isEmpty || carry == 1 {
            var sum = 0
            if let last = stack1.last {
                sum += last
                stack1.removeLast()
            }
            if let last = stack2.last {
                sum += last
                stack2.removeLast()
            }
            sum += carry
            if sum >= 10 {
                sum = sum - 10
                carry = 1
            }else {
                carry = 0
            }
            res.append(sum)
        }
        let dummy = ListNode(0)
        var p = dummy
        while !res.isEmpty {
            p.next = ListNode(res.last!)
            res.removeLast()
            p = p.next!
        }
        return dummy.next
    }
    
    func addTwoNumbers22(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else { return l2 }
        guard let l2 = l2 else { return l1 }
        let res = ListNode(0)
        var p = res
        var reverseL1 = reverseList(l1)
        var reverseL2 = reverseList(l2)
        var bag = 0
        while reverseL1 != nil || reverseL2 != nil || bag == 1 {
            var num = 0
            if reverseL1 != nil {
                num += reverseL1!.val
                reverseL1 = reverseL1?.next
            }
            if reverseL2 != nil {
                num += reverseL2!.val
                reverseL2 = reverseL2?.next
            }
            num += bag
            if num >= 10 {
                num = num%10
                bag = 1
            }else {
                bag = 0
            }
            p.next = ListNode(num)
            p = p.next!
        }
        let temp = res.next
        res.next = nil
        return reverseList(temp)
        
    }
    func addTwoNumbers2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        // 反转
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        let res = ListNode(0)
        var p = res
        var reverseL1 = reverseList(l1)
        var reverseL2 = reverseList(l2)
        var bag = 0
        while reverseL1 != nil && reverseL2 != nil {
            let sum = reverseL1!.val + reverseL2!.val +  bag
            if sum >= 10 {
                bag = 1
                p.next = ListNode(sum - 10)
            }else {
                bag = 0
                p.next = ListNode(sum)
            }
            p = p.next!
            reverseL1 = reverseL1?.next
            reverseL2 = reverseL2?.next
        }
        while reverseL1 == nil && reverseL2 != nil {
            let sum = reverseL2!.val +  bag
            if sum >= 10 {
                bag = 1
                p.next = ListNode(sum - 10)
            }else {
                bag = 0
                p.next = ListNode(sum)
            }
            p = p.next!
            reverseL2 = reverseL2?.next
        }
        while reverseL2 == nil && reverseL1 != nil {
            let sum = reverseL1!.val +  bag
            if sum >= 10 {
                bag = 1
                p.next = ListNode(sum - 10)
            }else {
                bag = 0
                p.next = ListNode(sum)
            }
            p = p.next!
            reverseL1 = reverseL1?.next
        }
        if bag == 1 {
            p.next = ListNode(1)
            p = p.next!
        }
        let temp = res.next
        res.next = nil
        return reverseList(temp)
    }
    
    //let sum = intL1 + intL2超过表示范围
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var intL1 = 0
        while l1 != nil {
            intL1 = intL1 * 10 + l1!.val
            l1 = l1?.next
        }
        var l2 = l2
        var intL2 = 0
        while l2 != nil {
            intL2 = intL2 * 10 + l2!.val
            l2 = l2?.next
        }
        let sum = intL1 + intL2
        let str = "\(sum)"
        let res = ListNode(0)
        var h = res
        for item in str {
            h.next = ListNode(Int(String(item))!)
            h = h.next!
        }
        return res.next
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev = head
        var temp: ListNode?
        while prev != nil {
            let post = prev?.next
            prev?.next = temp
            temp = prev
            prev = post
        }
        return temp
    }
}
let head = ListNode(1)
let node2 = ListNode(9)
let node3 = ListNode(3)
let head2 = ListNode(4)
let node5 = ListNode(9)

head.next = node2
node2.next = node3

head2.next = node5

let obj = Solution()
//let res = obj.reverseList(head)
//var p = res
//while p != nil {
//    print(p?.val)
//    p = p?.next
//}
// 193 49
let res = obj.addTwoNumbers3(head, head2)
var p = res
while p != nil {
    print(p?.val)
    p = p?.next
}
