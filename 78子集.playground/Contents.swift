
//https://leetcode-cn.com/problems/subsets/

class Solution {
    func subsets(nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        
        let nums = nums.sorted(by: <)
        
        _dfs(res: &res, &path, nums, 0)
        
        return res
    }
    
    private func _dfs(res: inout [[Int]],  _ path: inout [Int], _ nums: [Int], _ index: Int) {
        // termination case

        res.append(Array(path))
        print(res)
        for i in index..<nums.count {
            print(i)
            path.append(nums[i])
            print(path)
            _dfs(res: &res, &path, nums, i + 1)
            let re = path.removeLast()
            print(re)
            
        }
    }
}

let obj = Solution()
obj.subsets(nums: [1,2,3])

//class Solution {
//    func subsets(_ nums: [Int]) -> [[Int]] {
//
//
//        return [[]]
//    }
//}


//1 2 3
//
//path    res            index
//[]      []            0
//1        1            1
//1 2     1 2
//1 2 3   1 2 3
