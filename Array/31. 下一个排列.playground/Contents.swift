import UIKit

//https://leetcode-cn.com/problems/next-permutation/
/*37
 参考题解：一遍扫描
 // 先反向找到降序的index
 */
// 2个ArraySlice相加，或者相拼接，结果是Array
// reverse()就地反转。reversed()，会生成新的结果
var nums = [1,2,4,3]
var new = nums.reverse()
print(nums)
var temp = nums[0...2]
nums = nums[0...1] + nums[2...].reversed()

class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        if nums.count == 0 || nums.count == 1 {
            return
        }
        guard let violateIndex = findViolateIndex(nums) else {
            nums.reverse()
            return
        }

        swap(&nums, violateIndex, findLeastBigger(nums, violateIndex))
        nums = nums[0...violateIndex] + nums[(violateIndex+1)...].reversed()

    }
    
    func findViolateIndex(_ nums: [Int]) -> Int? {
        for i in (1..<nums.count).reversed() {
            if nums[i] > nums[i-1] {
                return i-1
            }
            
        }
        return nil
    }
    
    func findLeastBigger(_ nums: [Int], _ violateIndex: Int) -> Int {
        for i in (violateIndex+1..<nums.count).reversed() {
            if nums[i] > nums[violateIndex] {
                return i
            }
        }
        fatalError()
    }
    
    func swap<T>(_ nums:inout [T], _ indexL: Int,
                 _ indexR: Int) {
        (nums[indexL], nums[indexR]) = (nums[indexR], nums[indexL])
    }
}


let obj = Solution()
var arr = [3,2,1]
obj.nextPermutation(&arr)
print(arr)
