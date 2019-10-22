import UIKit
//https://leetcode-cn.com/problems/climbing-stairs/
//思路：转化成加法，用1和2做不同顺序的加法，等于n
class Solution {
    func climbStairs(_ n: Int) -> Int {
        // jie zhu shu zu
        var steps = Array<Int>.init(repeating: 0, count: n+1)
        
        return _helper(n: n, &steps)
    }
    
    func _helper(n:Int, _ steps: inout [Int]) -> Int {
        if n < 0 {
            return 0
        }
        if n == 0 {
            return 1
        }
        if steps[n] != 0 {
            return steps[n]
        }
        steps[n] = _helper(n: n-1, &steps) + _helper(n: n-2, &steps)
        return steps[n]
        
    }
}

let obj = Solution()
print(obj.climbStairs(5))

// 规律：和等于n的种数，等于 和等于n-1的种数，加上 和等于n-2的种数
//1 1
//1
//
//2   2
//1 1
//2
//
//
//
//3     3
//1 1 1
//1 2
//2 1
//
//
//4 1 3 5
//1 1 1 1
//1 2 1
//1 1 2
//2 1 1
//2 2
//
//5 1 4 3  8
//1 1 1 1 1
//1 2 1 1
//1 1 2 1
//1 1 1 2
//2 1 1 1
//1 2 2
//2 1 2
//2 2 1
