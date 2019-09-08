

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for item in nums {
            if dict[item] == nil {
                dict[item] = 1
            }else {
                dict.removeValue(forKey: item)
            }
        }
        
        if dict.isEmpty {
            return 0
        }else
        {
            return dict.first!.key
        }
    }
}

let obj = Solution()
print(obj.singleNumber([4,1,2,1,2]))

