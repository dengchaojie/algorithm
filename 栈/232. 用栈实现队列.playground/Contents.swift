import UIKit

//https://leetcode-cn.com/problems/implement-queue-using-stacks/


// 47 队列是对首操作
class MyQueue {

    var mutArr = [Int]()
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        mutArr.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        return mutArr.removeFirst()
    }
    
    /** Get the front element. */
    func peek() -> Int {
        return mutArr.first!
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return mutArr.isEmpty
    }
}
