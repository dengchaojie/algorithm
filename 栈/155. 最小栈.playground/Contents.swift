import UIKit

//https://leetcode-cn.com/problems/min-stack/


class MinStack {
    var min = Int.max
    var arr = [Int]()
    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ x: Int) {
        if x < min {
            min = x
        }
        arr.append(x)
    }
    
    func pop() {
        if arr.isEmpty {
            print("arr.isEmpty")
        }else {
            let out = arr.removeLast()
            if out == min {
                if arr.isEmpty {
                    min = Int.max//之前没有这一行，有漏洞。需要重置。
                }else {
                    min = arr.sorted().first!
                }
            }
        }
    }
    
    func top() -> Int {
        if arr.isEmpty {
            print("arr.isEmpty")
            return Int.min
        }else {
            return arr.last!
        }
    }
    
    func getMin() -> Int {
        if arr.isEmpty {
            print("arr.isEmpty")
            return Int.min
        }else {
            return min
        }
    }
}
let minStack =  MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin();   //--> 返回 -3.
minStack.pop();
minStack.top();      //--> 返回 0.
minStack.getMin();   //--> 返回 -2.

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
