import UIKit
// 40
class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        if stones.count == 1 {
            return stones[0]
        }
        var temp = stones.sorted()
        while temp.count >= 2 {
            let last = temp.removeLast()
            let pre = temp.removeLast()
            if last == pre {
                
            }else {
                let sub = last - pre
                _helper(sub, &temp)
            }
        }
        
        if temp.count == 1 {
            return temp[0]
        }else {
            return 0
        }
    }
    
    func _helper(_ val: Int, _ nums: inout [Int]) {
        var left = 0, right = nums.count - 1
        while left <= right {
            let middle = left + (right - left) / 2
            if nums[middle] == val {
                nums.insert(val, at: middle)
                return
            }else if nums[middle] > val {
                right = middle - 1
            }else {
                left = middle + 1
            }
        }
        nums.insert(val, at: left)

    }
    
    
}
