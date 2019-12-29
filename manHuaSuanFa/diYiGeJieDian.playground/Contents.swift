import UIKit


class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

// 环的入口节点
// 首次相遇点到环的入口节点的距离，等于头节点到首次相遇点的距离
// 所以，从头节点开始遍历，同时从首次相遇点开始遍历，步长都是1，相遇点就是环
// 的入口节点
func firstNodeOfCicle(list: ListNode?) -> ListNode? {
    
    var p1 = list
    var p2 = list
    var time = 0
    while p2 != nil {
        let n1 = p1?.next
        var n2: ListNode?
        if time == 1 {
            n2 = p2?.next
        } else {
            n2 = p2?.next?.next
        }
        if n1?.val == n2?.val {
            if time == 0 {
                p1 = list
                p2 = n2
                time = 1
            } else {
                return n1
            }
        }else {
            p1 = n1
            p2 = n2
        }
    }
    return nil
}

let n1 = ListNode.init(1)
let n2 = ListNode.init(2)
let n3 = ListNode.init(3)
let n4 = ListNode.init(4)
let n5 = ListNode.init(5)
let n6 = ListNode.init(6)
n1.next = n2
n2.next = n3
n3.next = n4
n4.next = n5
n5.next = n6
n6.next = n2

firstNodeOfCicle(list: n1)
