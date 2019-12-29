import UIKit
// 遗漏问题：指向自身，算不算有环？此时环长是多少？
// 算有环，环长是1

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
}
// 当相遇时，在继续走，当再次相遇时，p2比p1多走了1圈
func caculateLenghOfList(list: ListNode?) -> Int {

    var len1 = 0
    var len2 = 0
    var p1 = list
    var p2 = list
    var time = 0
    while p2 != nil {
        let n1 = p1?.next
        let n2 = p2?.next?.next
        if n1?.val == n2?.val {
            if time == 0 {
                time = 1
                p1 = n1
                p2 = n2
                
            } else {
                return (len2 - len1 + 1)
            }
        } else {
            p1 = n1
            p2 = n2
            if time == 1 {
                len1 = len1 + 1
                len2 = len2 + 2
            }
            
        }
    }
    return 0
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
n6.next = n1

caculateLenghOfList(list: n1)


// p2走的总长度 减去 p1走的总长度 等于 环长。这种方式不行，因为p2可能已经走了很都圈，特别在环长很小的时候。
//func caculateLenghOfList(list: ListNode?) -> Int {
//    var len = 0
//    var len1 = 0
//    var len2 = 0
//    var p1 = list
//    var p2 = list
//
//    while p2 != nil {
//        let n1 = p1?.next
//        let n2 = p2?.next?.next
//        if n1?.val == n2?.val {
//            len = len2 - len1 + 1
//            return len
//        } else {
//            p1 = n1
//            p2 = n2
//            len1 = len1 + 1
//            len2 = len2 + 2
//        }
//    }
//
//    return len
//}




