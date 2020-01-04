import UIKit

// 思路：创建一个辅助数组minArr，来存储依次的最小值

//struct MinStack {
//
//    var mutArr = [Int]()
//    var minArr = [Int]()
//
//    mutating func pushStack(item: Int) {
//        if mutArr.isEmpty {
//            self.minArr.append(item)
//            self.mutArr.append(item)
//        } else {
//            if item <= self.minArr.last! {
//                self.minArr.append(item)
//                self.mutArr.append(item)
//            } else {
//                self.mutArr.append(item)
//            }
//        }
//
//    }
//
//    mutating func popStack() -> Int {
//        if mutArr.isEmpty {
//            return -1
//        } else {
//            let item = self.mutArr.last
//            if item == minArr.last {
//                self.minArr.removeLast()
//            }
//            return self.mutArr.removeLast()
//        }
//    }
//
//    func getMin() -> Int {
//        if minArr.isEmpty {
//            return -1
//        } else {
//            return minArr.last!
//        }
//    }
//
//}
//
//var mSta = MinStack()
//mSta.pushStack(item: 10)
//mSta.pushStack(item: 9)
//mSta.pushStack(item: 7)
//mSta.pushStack(item: 12)
//mSta.pushStack(item: 3)
//mSta.pushStack(item: 8)
//mSta.pushStack(item: 5)
//
//
//mSta.getMin()
//mSta.popStack()
//mSta.popStack()
//mSta.popStack()
//mSta.getMin()


class MinStack {
    
    var mutArr = [Int]()
    var minArr = [Int]()
    init() {
        
    }
    func push(_ x: Int) {
        if mutArr.isEmpty {
            self.minArr.append(x)
            self.mutArr.append(x)
        } else {
            if x <= self.minArr.last! {
                self.minArr.append(x)
                self.mutArr.append(x)
            } else {
                self.mutArr.append(x)
            }
        }
        
    }
    
    func pop() -> Int {
        if mutArr.isEmpty {
            return -1
        } else {
            let item = self.mutArr.last
            if item == minArr.last {
                self.minArr.removeLast()
            }
            return self.mutArr.removeLast()
        }
    }
    
    func getMin() -> Int {
        if minArr.isEmpty {
            return -1
        } else {
            return minArr.last!
        }
    }
    
    func top() -> Int {
        if mutArr.isEmpty {
            return -1
        } else {
            return mutArr.last!
        }
    }
    
}

var mSta = MinStack()
mSta.push(10)
mSta.push(9)
mSta.push(7)
mSta.push(12)
mSta.push(3)
mSta.push(8)
mSta.push(5)


mSta.getMin()
mSta.pop()
mSta.pop()
mSta.pop()
mSta.getMin()
