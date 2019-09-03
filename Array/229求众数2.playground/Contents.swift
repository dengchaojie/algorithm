

class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var arrZhongShu: [Int] = []
        let muBiao = nums.count / 3
        var dict: [Int: Int] = [:]
        for item in nums {
            if let cun = dict[item]
            {
                dict[item] = cun + 1
                if cun + 1 > muBiao {
                    if arrZhongShu.contains(item) {
                        
                    }else {
                        arrZhongShu.append(item)
                    }
                }
            }else
            {
                dict[item] = 1
                if 1 > muBiao {
                    arrZhongShu.append(item)
                }
            }
        }
        
        return arrZhongShu
    }
}

let obj = Solution()
print(obj.majorityElement([3,2,3]))
print(obj.majorityElement([1,1,1,3,3,2,2,2]))

