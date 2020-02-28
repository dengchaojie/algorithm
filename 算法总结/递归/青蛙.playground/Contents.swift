
/*
 问题：一只青蛙一次可以跳上1级台阶，也可以跳上2级。求该青蛙跳上一个n级的台阶总共有多少种跳法？
https://www.cnblogs.com/zengming/p/10853641.html

 */
//巧用移位运算，因为计算的快，特别是当数很大时。
let num = 64
let res1 = num >> 1
let res2 = num >> 2
let res3 = num >> 3
let num2 = 3
let res4 = num2 << 1
let res5 = num2 << 2 // 0011-1100
let res6 = num2 << 3
if num2 % 2 == 1 {
    print("奇数")
}
if num2 & 1 == 1 {
    // 0011 & 0001 == 1
    print("奇数")
}


class Solution {
    // 递推：从下往上算
    // f(1) = 1;f(2) = 1;f(3) = f(1) + f(2); f(4) = f(3) + f(2)
    
    func jumpSteps(_ n: Int) -> Int {
        if n <= 2 {
            return n
        }
        var sum = 0
        var f1 = 1
        var f2 = 2
        for _ in 3...n {
            sum = f1 + f2
            f1 = f2
            f2 = sum
        }
        return sum
    }
    // 备忘录法：排除重复
    func jumpSteps2(_ n: Int) -> Int {
        var result = Array(repeating: 0, count: n+1)
        
        return helper(n, &result)
        
    }
    // f(n) = f(n-1) + f(n-2)
    func helper(_ n: Int, _ result: inout [Int]) -> Int {
        
        if n <= 2 {
            return n
            
        }else {
            if result[n] != 0 {
                return result[n]
            }else {
                result[n] = helper(n-1, &result) + helper(n-2, &result)
                return result[n]
            }
        }
      
    }
}


let obj = Solution()
obj.jumpSteps(14)
obj.jumpSteps2(14)

