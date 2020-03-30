

//https://leetcode-cn.com/problems/merge-sorted-array/
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        let cha = nums1.count - m - n
        if cha > 0 {
            for _ in 0..<cha {
                nums1.removeLast()
            }
        }
        for i in 0..<nums2.count {
            nums1[m+i] = nums2[i]
        }
        nums1.sort()
    }
}

var nums1 = [-1,0,0,3,3,3,0,0,0]
var nums2 = [1,2,2]

let obj = Solution()
obj.merge(&nums1, 6, nums2, 3)
print(nums1)


//bu tui jian jie fa
//var slice = nums1[0..<m]
//slice.append(contentsOf: nums2)
//slice.sort()
//nums1 = Array(slice)

// fang shi er
//let cha = nums1.count - m - n
//if cha > 0 {
//    for _ in 0..<cha {
//        nums1.removeLast()
//    }
//}
//for i in 0..<nums2.count {
//    nums1[m+i] = nums2[i]
//}
//nums1.sort()


//wei wan cheng jie fa
//var index = 0
//for i in 0..<n {
//    let item = nums2[i]
//    for (j) in index..<nums1.count {
//        let value = nums1[j]
//
//        if  item < value  {
//            nums1.insert(item, at: j)
//            index = j + 1
//            nums1.removeLast()
//            break
//        }else {
//
//        }
//
//
//    }
//}
