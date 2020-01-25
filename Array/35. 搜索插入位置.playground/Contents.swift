import UIKit

//https://leetcode-cn.com/problems/search-insert-position/


class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        for (i, item) in nums.enumerated() {
            if target <= item  {
                return i
            }else {
                
            }
            if i == nums.count - 1 {
                return nums.count
            }
        }
        return 0
    }
}

let obj = Solution()
obj.searchInsert([1,3,5,6], 5)
obj.searchInsert([1,3,5,6], 2)
obj.searchInsert([1,3,5,6], 7)
obj.searchInsert([1,3,5,6], 0)

