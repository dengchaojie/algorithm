//let arr = [2,3,5,6]
//for j in stride(from: 0, to: 0, by: -1) {
//    print(j)
//}

class Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return 0
        }
        var startIndex = 0
        var endIndex = nums.count - 1
        while startIndex + 1 <= endIndex {
            if nums[startIndex] < nums[startIndex + 1] {
                startIndex += 1
            }else if nums[startIndex] == nums[startIndex + 1] {
                
            }else if nums[startIndex] > nums[startIndex + 1] {
                
            }
            
            if nums[endIndex] > nums[endIndex - 1] {
                endIndex -= 1
            }else if nums[endIndex] == nums[endIndex - 1] {
                
            }else if nums[endIndex] < nums[endIndex - 1] {
                
            }
        }
        return endIndex - startIndex + 1
    }
    
    
}
/*
class Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return 0
        }
        var startIndex = -1
        for i in 0..<nums.count-1 {
            if nums[i] > nums[i+1] {
                startIndex = i
                break
            }
        }
        if startIndex == -1 {
            return 0
        }
        var endIndex = -1
        for j in stride(from: nums.count-1, to: 0, by: -1) {
            if nums[j] < nums[j-1] {
                endIndex = j
                break
                
            }else if nums[j] == nums[j-1] {
                if nums[j] < nums[startIndex] {
                    endIndex = j
                    break
                }
            }
        }
        if endIndex == -1 {
            return 0
        }
        return endIndex - startIndex + 1
        
    }
    
    
}
*/
let obj = Solution()
//print(obj.findUnsortedSubarray([2, 6, 4, 8, 10, 9, 15]))
//print(obj.findUnsortedSubarray([1, 2, 3, 4]))
//print(obj.findUnsortedSubarray([1,3,2,2,2]))
//print(obj.findUnsortedSubarray([1,3,2,5,5]))
print(obj.findUnsortedSubarray([2,3,3,2,4]))
print(obj.findUnsortedSubarray([2,3,3,1,4]))
