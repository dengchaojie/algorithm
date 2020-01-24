import UIKit

//https://leetcode-cn.com/problems/sqrtx/
// 09
// 二叉树搜索。因为x/2+1的平方是x+1+x^2/4，一定大于x，所以right从x/2+1递减
class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x <= 0 {
            return 0
        }
        var left = 0, right = x / 2 + 1
        while left <= right {
            let mid = (right - left) / 2 + left
            if mid * mid == x {
                return mid
            } else if mid * mid < x {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return right
    }
}

