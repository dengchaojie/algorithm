
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var num = nums.first!
        var sum = 0
        for item in nums {
            if item == num {
                sum += 1
            }else {
                sum -= 1
            }
            if sum == 0 {
                num = item
                sum = 1
            }
        }
        return num
    }
    
}

/*
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let muBiao = nums.count / 2
        var dic: [Int: Int] = [:]
        for item in nums {
            if let cun = dic[item] {
                if cun + 1 > muBiao {
                    return item
                }
                dic[item] = cun + 1
            }else {
                if 1 > muBiao {
                    return item
                }
                dic[item] = 1
            }
        }
        return 0
    }
}
*/

let obj = Solution()
//print(obj.majorityElement([3,2,3]))
//print(obj.majorityElement([2,2,1,1,1,2,2]))
print(obj.majorityElement([1]))

