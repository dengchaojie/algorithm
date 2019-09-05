//https://leetcode-cn.com/problems/two-sum/
//思路：遍历，把每个value和index存到字典，当target-item的value存在时，那么就知道结果了
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (i,item) in nums.enumerated() {
            if let lastIndex = dict[target - item] {
                return [lastIndex, i]
            }
            dict[item] = i
        }
        fatalError("do not have result")
    }
}
// 思路：遍历。通过测试。
//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//
//        let count = nums.count
//        if count < 2 {
//            return [-1, -1]
//        }
//        for (i, item) in nums.enumerated() {
//            if (i+1) <= (count-1){
//                for j in (i+1)...(count-1)  {
//                    let sum = item + nums[j]
//                    if sum == target {
//                        return [i, j]
//                    }
//                }
//            }
//        }
//        return [-1, -1]
//    }
//}

let obj = Solution()
print(obj.twoSum([-1,-2,-3,-4,-5], -8))

