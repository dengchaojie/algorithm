import UIKit

//https://leetcode-cn.com/problems/count-primes/
// 31
// 20
// 3 9 12
class Solution {
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else {
            return 0
        }
        // 默认所有的都是质数
        var isPrime = Array(repeating: true, count: n)
        isPrime[0] = false// 手动改写不是质数的
        isPrime[1] = false// 手动改写不是质数的
        var count = 0
        
        for index in 2..<n {
            guard isPrime[index] else {
                // 不知质数，进行下一个for的遍历
                continue
            }
            // 执行到这里，说明index是质数，所以count加1
            count += 1
            var nextNum = index * index
            // 如果一个质数的平方，小于n，那么这个平方不是质数，因为这个数可以
            // 被分解为index和index的乘积，所以不是质数
            while nextNum < n {
                isPrime[nextNum] = false
                // 如果index的平方加上index，小于n，那个这个数，可以分解为
                // index(index + 1)的乘积，所以不是质数
                nextNum = nextNum + index
            }
        }
        return count
        
    }
}


let obj = Solution()
obj.countPrimes(10)
