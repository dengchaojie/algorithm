

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        if k == 0 {
            return false
        }
        var dict: [Int: Int] = [:]
        for i in 0..<nums.count {
            guard let index = dict[nums[i]], i - index <= k else {
                dict[nums[i]] = i
                continue
            }
            return true
        }
        
        return false
    }
}
/*
class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        if k == 0 {
            return false
        }
        var dict: [Int: [Int]] = [:]
        for (i, item) in nums.enumerated() {
            if let cun:[Int] = dict[item] {
                for index in cun {
                    if i - index <= k {
                        return true
                    }
                }
                var newCun = cun
                newCun.append(i)
                dict[item] = newCun
            }else {
                dict[item] = [i]
            }
        }
        return false
    }
}
*/

let obj = Solution()
print(obj.containsNearbyDuplicate([1,2,3,1], 3))
print(obj.containsNearbyDuplicate([1,0,1,1], 1))
print(obj.containsNearbyDuplicate([1,2,3,1,2,3], 2))

