

//https://leetcode-cn.com/problems/rotate-array/ 59
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let count = nums.count
        var ciShu = k
        if k >= count {
            ciShu = k - count
        }
        for _ in 0..<ciShu {
            let last = nums.last!
            nums.remove(at: nums.endIndex-1)
            nums.insert(last, at: nums.startIndex)
        }
    }
}

var arr = [1,2]

//var arr = [1,2,3,4,5,6,7]
let obj = Solution()
print(obj.rotate(&arr, 3))
print(arr)

// fen cheng san bu fen
//        let slice = nums[0..<count]
//        let qianK = nums[0..<k]
//        let houK = nums[(count-k)..<count]
//        let zhongJian = nums[k..<(count-k)]

//输入: [1,2,3,4,5,6,7] 和 k = 3
//输出: [5,6,7,1,2,3,4]
// 4561237


//var arr = [1,2,3,4,5,6,7]
//let item = arr.remove(at: arr.endIndex-1)
//arr.insert(item, at: arr.startIndex)
//print(arr)
