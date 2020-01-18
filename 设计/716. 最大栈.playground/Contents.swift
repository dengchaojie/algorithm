import UIKit

//https://leetcode-cn.com/problems/max-stack/
class MaxStack {
    var mutArray : [Int]
    var maxArray : [Int]
    /** initialize your data structure here. */
    init() {
        mutArray = [Int]()
        maxArray = [Int]()
    }
    
    func push(_ x: Int) {
        mutArray.append(x)
        maxArray.append(maxArray.isEmpty ? x : max(x, maxArray.last!))
        
    }
    
    func pop() -> Int {
        if mutArray.isEmpty {
            return 0
        }else {
            maxArray.removeLast()
            return mutArray.removeLast()
        }
    }
    
    func top() -> Int {
        if mutArray.isEmpty {
            return 0
        }else {
            return mutArray.last!
        }

    }
    
    func peekMax() -> Int {
        if maxArray.isEmpty {
            return 0
        }else {
            return maxArray.last!
        }
    }
    
    func popMax() -> Int {
        if mutArray.isEmpty {
            return 0
        }else {
            
            let max = peekMax()
            var buffer = [Int]()
            // 如果栈顶元素不等于最大值，那么说明这个元素在mutArray里有，在maxArray里没有
            // pop()移除mutArray的栈顶，并加入buffer，移除maxArray的填充元素
            while top() != max {
                buffer.append(pop())
            }
            pop()//移除最大值
            //将mutArray的最大值后面的数据，写会mutArray
            while !buffer.isEmpty {
                push(buffer.removeLast())
            }
            return max
        }
    }
}
// push 1, pop 1, top 1, peekMax 1, popMax n
//class MaxStack {
//    var mutArray = Array<Int>()
//
//    /** initialize your data structure here. */
//    init() {
//
//    }
//
//    func push(_ x: Int) {
//        mutArray.append(x)
//    }
//
//    func pop() -> Int {
//        if mutArray.isEmpty {
//            return 0
//        }else {
//            let last = mutArray.removeLast()
//            return last
//        }
//    }
//
//    func top() -> Int {
//        if mutArray.isEmpty {
//            return 0
//
//        }else {
//            return mutArray.last!
//        }
//
//    }
//
//    func peekMax() -> Int {
//        if mutArray.isEmpty {
//            return 0
//        }else {
//            let temp = mutArray.sorted()
//            return temp.last!
//        }
//
//    }
//
//    func popMax() -> Int {
//        if mutArray.isEmpty {
//            return 0
//        }else {
//            let temp = mutArray.sorted()
//            let max = temp.last!
//
//            for index in 0...(mutArray.count-1)  {
//                let resultIndex = mutArray.count - 1 - index
//                let item = mutArray[resultIndex]
//                if item == max {
//                    mutArray.remove(at: resultIndex)
//                    return max
//                }
//
//            }
//            return max
//        }
//    }
//}


let stack = MaxStack();
stack.push(5);
stack.push(1);
stack.push(5);
stack.top(); //-> 5
stack.popMax(); //-> 5
stack.top(); //-> 1
stack.peekMax(); //-> 5
stack.pop(); //-> 1
stack.top(); //-> 5

//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/max-stack
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
