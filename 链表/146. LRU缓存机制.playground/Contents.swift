import UIKit

//https://leetcode-cn.com/problems/lru-cache/?utm_source=LCUS&utm_medium=ip_redirect_q_uns&utm_campaign=transfer2china
//

/*
 双向链表？
 
 
 
 */


class LRUCache {
    
    var capacity = 0
    var headNode = ListNode.init(0, 0)
    var tailNode = ListNode.init(0, 0)
    var dict = [Int: ListNode]()
    
    
    init(_ capacity: Int) {
        self.capacity = capacity
        headNode.next = tailNode
    }
    
    func get(_ key: Int) -> Int {
        if let nodeExisted = dict[key] {
            let preNode = nodeExisted.pre
            let nextNode = nodeExisted.next
            preNode?.next = nextNode
            nextNode?.pre = preNode

             let lastNode = tailNode.pre
             lastNode?.next = nodeExisted
             nodeExisted.pre = lastNode
             nodeExisted.next = tailNode
            tailNode.pre = nodeExisted
            return nodeExisted.value
        } else {
            return -1
        }
    }
    
    func put(_ key: Int, _ value: Int) {
        // is existed
        if let nodeExisted = dict[key] {
  
            let preNode = nodeExisted.pre
            let nextNode = nodeExisted.next
            preNode?.next = nextNode
            nextNode?.pre = preNode

            nodeExisted.value = value
            let lastNode = tailNode.pre
            lastNode?.next = nodeExisted
            nodeExisted.pre = lastNode
            nodeExisted.next = tailNode
            tailNode.pre = nodeExisted
        } else {
            if capacity == 0 {
                let oldNode = headNode.next
                dict[(oldNode?.key)!] = nil
                
                oldNode?.key = key
                oldNode?.value = value
        

                headNode.next = oldNode?.next
                oldNode?.next?.pre = headNode
                
                let lastNode = tailNode.pre
                lastNode?.next = oldNode
                oldNode?.pre = lastNode
                oldNode?.next = tailNode
                tailNode.pre = oldNode
            } else {
                let node = ListNode.init(key, value)
                let lastNode = tailNode.pre
                lastNode?.next = node
                node.pre = lastNode
                node.next = tailNode
                tailNode.pre = node
                dict[key] = node
                
                capacity = capacity - 1
            }
            
        }
    }
}

class ListNode {
    var key: Int
    var value: Int
    
    var pre: ListNode?
    var next: ListNode?
    init(_ key: Int, _ value: Int) {
        self.key = key
        self.value = value
    }
}


//class LRUCache {
//    var arr = [Int]()
//    var dict = [Int: Int]()
//    var capacity = 0
//    init(_ capacity: Int) {
//        self.capacity = capacity
//    }
//
//    func get(_ key: Int) -> Int {
//        if let value = dict[key] {
//            let index = arr.firstIndex(of: key)
//            arr.remove(at: index!)
//            arr.append(key)
//            return value
//        } else {
//            return -1
//        }
//    }
//
//    func put(_ key: Int, _ value: Int) {
//
//        if let _ = dict[key] {// 已经存在
//            dict[key] = value
//            let index = arr.firstIndex(of: key)
//            arr.remove(at: index!)
//            arr.append(key)
//        } else {
//            if capacity == 0 {
//                let first = arr.removeFirst()
//                dict[first] = nil
//                arr.append(key)
//                dict[key] = value
//
//            } else {
//                arr.append(key)
//                dict[key] = value
//                capacity = capacity - 1
//            }
//        }
//    }
//}

/*
 最近最少使用
 用数组，字典，

 执行用时 :
 2708 ms
 , 在所有 Swift 提交中击败了
 13.76%
 的用户
 内存消耗 :
 22.7 MB
 , 在所有 Swift 提交中击败了
 7.14%
 的用户
 
 */


/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */
