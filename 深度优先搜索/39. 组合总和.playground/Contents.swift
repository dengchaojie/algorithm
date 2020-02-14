import UIKit
/*
 */
//https://leetcode-cn.com/problems/combination-sum/
class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var combinations = [[Int]](), combination = [Int]()
        dfs(candidates.sorted(), target, &combinations, &combination, 0)
        return combinations
    }
    
    func dfs(_ candidates: [Int], _ target: Int, _ combinations: inout [[Int]], _ combination: inout [Int], _ index:Int) {
        if target == 0 {
            combinations.append(combination)
            return
        }
        guard index < candidates.count else {
            return
        }
        for i in index..<candidates.count {
            guard candidates[i] <= target else {
                break
            }
            combination.append(candidates[i])
            dfs(candidates, target-candidates[i], &combinations, &combination, i)
            combination.removeLast()
        }
        
    }
}


