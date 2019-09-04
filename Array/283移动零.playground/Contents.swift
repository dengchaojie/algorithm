
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var idx = 0
        for item in nums
        {
            if item != 0 {
                nums[idx] = item
                idx += 1
            }
        }
        
        while idx < nums.count {
            nums[idx] = 0
            idx += 1
        }
    }
}

var arr = [0,1,0,3,12]

let obj = Solution()
print(obj.moveZeroes(&arr))

//class Solution {
//    func moveZeroes(_ nums: inout [Int]) {
//        var arrZeroIndex: [Int] = []
//        let count = nums.count
//        for i in 0..<count {
//            let item = nums[i]
//            if item != 0 {
//                if arrZeroIndex.isEmpty {
//
//                }else {
//                    let firstIndex = arrZeroIndex.first!
//                    nums[firstIndex] = item
//                    nums[i] = 0
//                    arrZeroIndex[0] = i
//                }
//            }else {
//                arrZeroIndex.append(i)
//            }
//        }
//        print(nums)
//    }
//}


