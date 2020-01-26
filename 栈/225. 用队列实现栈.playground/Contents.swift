import UIKit

//https://leetcode-cn.com/problems/implement-stack-using-queues/
class MyStack {
    var mutArr = [Int]()
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        mutArr.append(x)
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        return mutArr.removeLast()
    }
    
    /** Get the top element. */
    func top() -> Int {
        return mutArr.last!
    }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        return mutArr.isEmpty
    }
}
