import UIKit

//https://leetcode-cn.com/problems/trapping-rain-water/

// 双指针：如果height[left] < height[right]，那么累加左边雨水，否则累加右边雨水
class Solution {
    func trap(_ height: [Int]) -> Int {
        if height.count == 0 {
            return 0
        }
        var ans = 0
        var left = 0, right = height.count - 1
        var leftMax = 0, rightMax = 0
        while left < right {
            if height[left] < height[right] {
                height[left] > leftMax ? (leftMax = height[left]) :
                (ans += (leftMax - height[left]))
                left += 1
            }else {
                height[right] > rightMax ? (rightMax = height[right]) :
                (ans += (rightMax - height[right]))
                right -= 1
            }
        }
        return ans
    }
    
}
// 栈
// 如果当前高度比栈顶下标对应的高度大，那么就会产生雨量
//
//class Solution {
//    func trap(_ height: [Int]) -> Int {
//        if height.count == 0 {
//            return 0
//        }
//        var res = 0
//        var current = 0
//        var stack = [Int]()
//        while current < height.count {
//            while !stack.isEmpty && height[current] > height[stack.last!] {
//                let topIndex = stack.last!
//                stack.removeLast()
//                if stack.isEmpty {
//                    break
//                }
//                let distance = current - stack.last! - 1
//                // 当前高度和栈顶下标对应的高度的最小值，
//                let subHeight = min(height[current], height[stack.last!]) -
//                height[topIndex]
//                res += distance * subHeight
//            }
//
//            stack.append(current)
//            current += 1
//        }
//        return res
//    }
//
//
//}
let obj = Solution()
obj.trap([0,1,0,2,1,0,1,3,2,1,2,1])

// 每个高度的雨水，等于左边最大值和右边最大值的最小值，减去当前的高度
// 遍历一遍，拿到左边的最大值数组；再遍历一遍，拿到最有的最大数组
// 动态编程，时间复杂度是n，28ms
/*
class Solution {
    func trap(_ height: [Int]) -> Int {
        if height.count == 0 {
            return 0
        }
        var ans = 0
        let leftHeight = getMaxHeight(height, true)
        let rightHeight = getMaxHeight(height, false)
        for i in 0..<height.count {
            ans += min(leftHeight[i], rightHeight[i]) - height[i]
        }
        return ans
    }
    
    func getMaxHeight(_ height: [Int], _ isLeft: Bool) -> [Int] {
        var res = Array(repeating: 0, count: height.count)
        var currentMax = 0
        if isLeft {
            for i in 0..<height.count {
                res[i] = max(currentMax, height[i])
                currentMax = res[i]
            }
        }else {
            for i in (0..<height.count).reversed() {
                res[i] = max(currentMax, height[i])
                currentMax = res[i]
            }
        }
        return res
    }
    
}
*/

//14取左边最大值，取右边的最大值，在取2者的最小值，减去当前高度，为雨水量
// 这是暴力解法。时间复杂度是n的平方，因为是双层for.1616 ms
//class Solution {
//    func trap(_ height: [Int]) -> Int {
//        if height.count == 0 {
//            return 0
//        }
//        var ans = 0
//        for i in 1..<height.count {
//            var maxLeft = 0, maxRight = 0
//            for j in 0...i {
//                maxLeft = max(maxLeft, height[j])
//            }
//            for j in i..<height.count {
//                maxRight = max(maxRight, height[j])
//            }
//
//            let sub = min(maxLeft, maxRight) - height[i]
//            print("i == \(i), sub = \(sub)")
//            ans += sub
//        }
//        return ans
//    }
//}



