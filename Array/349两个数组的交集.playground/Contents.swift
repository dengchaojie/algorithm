class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1 = Set<Int>(nums1)
        let set2 = Set<Int>(nums2)
        let res = set1.intersection(set2)
        return [Int](res)
    }
}
/*
let nums1 = [1,2,2,1]
let nums2 = [2,2]
let set1 = Set<Int>(nums1)
let set2 = Set<Int>(nums2)
let res = set1.intersection(set2)

class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var arrRes: [Int] = []
        if nums1.count > nums2.count {
            for item in nums2 {
                if !arrRes.contains(item) && nums1.contains(item){
                    arrRes.append(item)
                }
            }
        }else
        {
            for item in nums1 {
                if !arrRes.contains(item) && nums2.contains(item){
                    arrRes.append(item)
                }
            }
        }
        
        return arrRes
    }
}
*/
let obj = Solution()
print(obj.intersection([1,2,2,1], [2,2]))
print(obj.intersection([4,9,5], [9,4,9,8,4]))
