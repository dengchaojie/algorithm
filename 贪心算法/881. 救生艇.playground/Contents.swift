import UIKit

//https://leetcode-cn.com/problems/boats-to-save-people/

class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        var tempArr = people.sorted()
        var result = 0
        while let last = tempArr.last, last >= limit {
            tempArr.removeLast()
            result += 1
        }

        var left = 0, right = tempArr.count - 1
        while left <= right {
            if left == right {
                left += 1
                result += 1
                break
            }
            if tempArr[left] + tempArr[right] > limit {
                right -= 1
                result += 1
            }else {
                left += 1
                right -= 1
                result += 1
            }
        }
        return result
    }
}


let obj = Solution()
//obj.numRescueBoats([1,2], 3)
//obj.numRescueBoats([3,2,2,1], 3)
obj.numRescueBoats([3,5,3,4], 5)

