


class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict: [Int: Int] = [:]
        for item in nums {
            if dict[item] != nil {
                return true
            }else {
                dict[item] = 1
            }
        }
        return false
    }
}

let obj = Solution()
print(obj.containsDuplicate([1,2,3,1]))
print(obj.containsDuplicate([1,2,3,4]))
print(obj.containsDuplicate([1,1,1,3,3,4,3,2,4,2]))
