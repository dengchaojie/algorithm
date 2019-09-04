//https://leetcode-cn.com/problems/two-sum/
//思路：

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        let count = nums.count
        if count < 2 {
            return [-1, -1]
        }
        for (i, item) in nums.enumerated() {
            if item < target && (i+1) <= (count-1){
                for j in (count-1) ... (i+1) {
                    let sum = item + nums[j]
                    if sum == target {
                        return [i, j]
                    }else if (sum > target) {
                        continue
                    }else
                    {
                        break
                    }
                    
                }
            }
        }
        return [-1, -1]
        
    }
}

let obj = Solution()
print(obj.twoSum([2, 7, 11, 15], 9))

