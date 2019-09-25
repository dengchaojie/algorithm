//https://leetcode-cn.com/problems/kth-largest-element-in-an-array/

class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        let newArr = nums.sorted()
        let res = newArr[nums.count - k]
        return res
    }
}


let obj = Solution()
print(obj.findKthLargest([3,2,1,5,6,4], 2))
print(obj.findKthLargest([3,2,3,1,2,4,5,5,6], 4))
