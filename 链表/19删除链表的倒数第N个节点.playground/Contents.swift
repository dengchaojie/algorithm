import UIKit

//https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/

// 扫描一次？n
class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        var nodeAtN = head
        var nodeAtBeforeN = head
        var p = head
        let result = head
        var count = 0
        while p != nil {

            count = count + 1
            if count <= n {
                
            }
            else if count == n + 1  {

                nodeAtN = nodeAtN?.next

            } else if count == n + 2 {

                nodeAtBeforeN = nodeAtBeforeN?.next
                nodeAtN = nodeAtN?.next

            } else {

                nodeAtBeforeN = nodeAtBeforeN?.next
                nodeAtN = nodeAtN?.next
                
            }
            p = p?.next
        }
        
        if count == n {
            return result?.next
        } else {

            nodeAtBeforeN?.next = nodeAtN?.next
            
        }
        
        return result
    }
    
    func removeNthFromEnd2(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        let dummy = ListNode.init(0)
        dummy.next = head
        var prev = dummy
        var post = dummy
        for _ in 0..<n {
            post = post.next!
        }
        
        while post.next != nil {
            prev = prev.next!
            post = post.next!
        }
        prev.next = prev.next?.next
        return dummy.next
    }
    

    func printLinkedList(_ list: ListNode?) {
        var p = list
        while p != nil {
            print(p!.val)
            p = p?.next
        }
    }
}

let obj = Solution.init()
let node1 = ListNode.init(1)
//let result = removeNthFromEnd(node1, index: 1)
let node2 = ListNode.init(2)
let node3 = ListNode.init(3)
let node4 = ListNode.init(4)
let node5 = ListNode.init(5)
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
//let result = obj.removeNthFromEnd(node1, 2)
let result = obj.removeNthFromEnd2(node1, 2)

obj.printLinkedList(result)



/*

 对，保持N个距离
中间错误：对保持的距离和忘记判断count = n了

 
 
 
 */







