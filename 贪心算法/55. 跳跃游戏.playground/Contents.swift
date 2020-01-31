import UIKit

//https://leetcode-cn.com/problems/jump-game/
// 思路是遍历数组，
class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        // 跳的总步数的和是最后一个元素的index
        // 第一个元素可以跳的最远距离
        var maxStep = nums[0]
        // 遍历数组的每个元素，index和value
        for (currentIndex, value) in nums.enumerated() {
            // 如果当前index大于能跳的最远距离，那么无法到达
            if currentIndex > maxStep {
                return false
            }
            // 疑问：为什么是currentIndex+value，解答是到达当前元素的能达到的
            // 步数最大和
            // 下面还重新计算的最大值
            maxStep = max(maxStep, currentIndex + value)
        }
        return true
    }
}
