//https://leetcode-cn.com/problems/find-all-numbers-disappeared-in-an-array/
//silu:

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        var set = Set<Int>.init()
        let sort = nums.sorted()
        for (i, item) in sort.enumerated() {
            if item != i {
                set.insert(i)
            }
        }
        
        return res
    }
}


//1 2 2 3 3 4 7 8
//1 2 3 4 5 6 7 8
