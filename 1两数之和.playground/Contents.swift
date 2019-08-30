

/// 1. 两数之和
// 方法1
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = Dictionary<Int, Int>()
        for (n, item) in nums.enumerated() {
            dict[item] = n
        }
        
        for (n, item) in nums.enumerated() {
            
            if dict.keys.contains(target - item)
                && dict[target - item]! != n
                
            {
                return [n, dict[target - item]!]
            }
            
        }
        

        
        return [-1,-1]
    }
}
// 方法2
//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        for i in 0...nums.count-1 {
//            let ii = nums[i];
//            for j in i+1...nums.count-1 {
//                let jj = nums[j]
//
//                if ii + jj == target {
//                    return [i, j]
//                }
//            }
//
//        }
//        return [-1,-1]
//    }
//}

let cl = Solution.init()
let indexs = cl.twoSum([11, 15, 2, 7], 9)
print(indexs)

/*
 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
 
 你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
 
 示例:
 
 给定 nums = [2, 7, 11, 15], target = 9
 
 因为 nums[0] + nums[1] = 2 + 7 = 9
 所以返回 [0, 1]
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/two-sum
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

