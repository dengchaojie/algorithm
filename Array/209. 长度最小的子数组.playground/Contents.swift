

//https://leetcode-cn.com/problems/minimum-size-subarray-sum/


class Solution {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        // 找一个最小长度
        //思路是遍历每个元素，找当前元素的最小长度
        var minSize = Int.max, start = 0, currentSum = 0
        
        for (i, num) in nums.enumerated() {
            currentSum += num
            while currentSum >= s, start <= i {
                minSize = min(minSize, i-start+1)
                currentSum -= nums[start]
                start += 1
            }
        }
        return minSize == Int.max ? 0 : minSize
    }
}
