//https://leetcode-cn.com/problems/kth-largest-element-in-an-array/

// 超出时间限制
//* Primary idea: Quick sort
//* Time Complexity: O(nlogn), Space Complexity: O(n)
//class Solution {
//    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
//        guard let first = nums.first else {
//            fatalError("invalid input")
//        }
//        let leftPart = nums.filter({ $0 > first })
//        let middlePart = nums.filter({ $0 == first })
//        let rightPart = nums.filter({ $0 < first })
//
//        if nums.count == middlePart.count {
//            return middlePart[k - 1]
//        }
//
//        if leftPart.count > k - 1 {
//            return findKthLargest(leftPart, k)
//        }else if k - leftPart.count <= middlePart.count {
//            return findKthLargest(middlePart, k - leftPart.count)
//
//        }else {
//            return findKthLargest(rightPart, k - leftPart.count - middlePart.count)
//        }
//
//
//    }
//}


class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        let newArr = nums.sorted()
        let res = newArr[nums.count - k]
        return res
    }
}


let obj = Solution()
print(obj.findKthLargest([3,2,1,5,6,4], 2))
print(obj.findKthLargest([3,2,3,1,2,4,5,5,6], 4))

/*
 5 6 4
 3
 2 1
 
 6
 5
 4
 
 
 */
