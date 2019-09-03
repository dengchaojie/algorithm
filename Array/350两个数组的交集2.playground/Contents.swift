//var arr: [Int] = [1,2,3]
//let index = arr.index(2, offsetBy: 0)
//arr.remove(at: index)

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var arrRes: [Int] = []
        let arrIntersect = [Int](Set<Int>(nums1).intersection(nums2))
        
        for item in arrIntersect {
            var count1 = 0
            for item1 in nums1 {
                if item == item1 {
                    count1 += 1
                }
            }
            var count2 = 0
            for item2 in nums2 {
                if item == item2 {
                    count2 += 1
                }
            }
            let count = min(count1, count2)
            for _ in 1...count {
                arrRes.append(item)
            }
        }
        return arrRes
    }
}

let obj = Solution()
print(obj.intersect([1,2,2,1], [2,2]))
print(obj.intersect([4,9,5], [9,4,9,8,4]))
print(obj.intersect([3,1,2], [1,1]))
