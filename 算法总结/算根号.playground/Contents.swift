//https://leetcode-cn.com/problems/sqrtx/submissions/
import UIKit

let num = 9
let res = pow(2, 3)
let res2 = sqrt(9)

class Solution {
    
    // 直接用系统的公式
    func mySqrt4(_ x: Int) -> Int {
        return Int(sqrt(Double(x)))
    }
    // 数学公式。x的平方根，等于e的（二分之一乘以log(x)）的次方。
    // 所以把等号右边的求出来，就是结果了
    func mySqrt3(_ x: Int) -> Int {
        if x < 2 {
            return x
        }
        
        let left = Int(exp(0.5 * log(Double(x))))
        let right = left + 1
        return right * right > x ? left : right
    }
    /*
     二叉查找
     x/2+1的平方是x+1+x^2/4，大于x。所以x的平方根小于x/2+1
     */
    func mySqrt(_ x: Int) -> Int {
        var left = 0
        var right = x / 2 + 1
        while left <= right {
            let mid = left + (right - left) / 2
            if mid * mid == x {
                return mid
            }else if mid * mid > x {
                right = mid - 1
            }else {
                left = mid + 1
            }
        }
        return right
        
    }
    
    
    /*递归和位操作
     数学公式。x的平方根，等于2乘以（（x/4）的平方根）
     */
    func mySqrt7(_ x: Int) -> Int {
        if x < 2 {
            return x
        }
        let left = mySqrt7(x >> 2) << 1
        let right = left + 1
        return right * right > x ? left : right
    }
    
    /*
     计算平方根，最好和使用最多的方法是牛顿法
     (x+1)/2
     
     */
    func mySqrt2(_ x: Int) -> Int {
        if x < 2 {
            return x
        }
        var x0 = x
        var x1 = (x0 + x / x0) / 2
        while abs(x0 - x1) >= 1 {
            x0 = x1
            x1 = (x0 + x / x0) / 2
        }
        return Int(x1)
    }
    
    
    /*
    向下取整
    (n+1)(n-1) = n^2 - 1
    n^2 > (n+1)(n-1)
    */
    func mySqrt5(_ x: Int) -> Int {
        if x == 0 {
            return 0
        }else if x == 1 {
            return 1
        }
        var i = 1
        while i <= x {
            if (i+1) * (i-1) >= x {
                return i-1
            }else {
                i += 1
            }
        }
        return i
    }
    
    func mySqrt6(_ x: Int) -> Int {
        if x < 2 {
            return x
        }
        var i = 1
        while i <= x {
            if i * i == x {
                return i
            }else if i * i > x {
                return i-1
            }else {
                i += 1
            }
        }
        return i
    }
    
    
}

let obj  = Solution()
obj.mySqrt6(8)
obj.mySqrt6(1)
obj.mySqrt6(2)

obj.mySqrt6(3)
obj.mySqrt6(7)
obj.mySqrt6(9)

obj.mySqrt6(10)
obj.mySqrt6(17)
//
//        0
//    1       2
//3       4 5
