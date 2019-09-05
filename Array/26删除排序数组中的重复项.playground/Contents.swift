

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        var index = 0
        
        for num in nums where num != nums[index] {
//            print("num is \(num)")
//            print("index is \(index)")
            index += 1
            nums[index] = num
//            print("nums is \(nums)")

        }
//        print(nums)
        return index + 1
    }
}
var mutArr = [1,1,2,2]//[1,1,2]//
let obj = Solution()
print(obj.removeDuplicates(&mutArr))

/*
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index = 0
        while index < nums.count-1 {

            for i in (index+1)..<(nums.count)  {
                if nums[i] == nums[index] {
                    nums.remove(at: i)
                }
            }
            index += 1
        }
        
        
        
        return nums.count
    }
}
*/


