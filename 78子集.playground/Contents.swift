
//https://leetcode-cn.com/problems/subsets/


class Solution {
    func subsets(nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var path = [Int]()
        
        _dfs(res: &res, path: &path, nums: nums, index: 0)

        return res
    }
    
    func _dfs(res: inout [[Int]], path: inout [Int], nums: [Int], index: Int) {
        res.append(path)
        
        for i in index..<nums.count {
            path.append(nums[i])
            _dfs(res: &res, path: &path, nums: nums, index: i + 1)
            path.removeLast()
        }
    }
    
}

let obj = Solution()
obj.subsets(nums: [1,2])







//class Solution {
//    func subsets(nums: [Int]) -> [[Int]] {
//        var res = [[Int]]()
//        var path = [Int]()
//
//        let nums = nums.sorted(by: <)
//
//        _dfs(res: &res, &path, nums, 0)
//
//        return res
//    }
//
//    private func _dfs(res: inout [[Int]],  _ path: inout [Int], _ nums: [Int], _ index: Int) {
//        // termination case
//
//        res.append(Array(path))
//        print(res)
//        print("index==\(index)")
//        print("循环外")
//        for i in index..<nums.count {
//            print("循环内")
//            print("i==\(i)")
//            path.append(nums[i])
//            print(path)
//            _dfs(res: &res, &path, nums, i + 1)
//            let re = path.removeLast()
//            print("removeLast\(re)")
//
//        }
//    }
//}



//注意，在for循环内部，每调用依次_dfs()方法，就会触发一个新的for循环
//以[1,2]为例，当方法传入的index为0时，共触发2个新的for循环。而当index为1时，
//只触发了一个新的for循环




//1 2 3
//
//path    res            index
//[]      []            0
//1        1            1
//1 2     1 2
//1 2 3   1 2 3
