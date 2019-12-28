import UIKit

//思路：这是一个追赶问题。创建2个指针p1和p2，p1的步长是1，p2的步长是2，如果有环，p2会碰上p1。
//Definition for singly-linked list.
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
      self.val = val
      self.next = nil
  }
}

func haveCicleOfListNode(list: ListNode?) -> Bool {

    var p1 = list
    var p2 = list
    while p2 != nil {
        let n1 = p1?.next
        let n2 = p2?.next?.next
        if n1?.val == n2?.val {
            return true
        } else {
            p1 = n1
            p2 = n2
        }
    }
    return false;
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
n5.next = n2

haveCicleOfListNode(list: n1)


