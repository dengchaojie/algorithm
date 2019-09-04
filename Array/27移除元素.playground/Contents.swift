
//https://leetcode-cn.com/problems/remove-element/
// 思路：是移除0那道题的变种，这到题是移除指定元素。按照上一题的思路，做元素的移动，执行时间更快
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var idx = 0
        for item in nums {
            if item != val {
                nums[idx] = item
                idx += 1
            }
        }
        return idx
    }
}

//var arr = [3,2,2,3]
var arr = [3,3,3,3]

let obj = Solution()
print(obj.removeElement(&arr, 3))
