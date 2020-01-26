import UIKit

//https://leetcode-cn.com/problems/rotting-oranges/
// 思路：广度优先搜索 29


class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var grid = grid
       //相邻的左右上下
        let rArr = [-1, 0, 1, 0]// 行水平方向
        let cArr = [0, -1, 0, 1]// 列：竖直方向
        // 第一遍全遍历，把所有的坏柿子，都把坐标加入数组
        var badArr = [Int](), depth = [Int: Int]()
        let row = grid.count, culumn = grid[0].count
        for i in 0..<row {
            for j in 0..<culumn {
                let code = i*culumn + j
                if grid[i][j] == 2 {
                    badArr.append(code)
                }
                depth[code] = 0
            }
        }
        var dep = 0
        while !badArr.isEmpty {
            let code = badArr.removeFirst()
            for k in 0..<rArr.count {
                let codeR = code / culumn
                let codeC = code % culumn
                let newR = codeR + rArr[k]
                let newC = codeC + cArr[k]
                if newR >= 0 && newR < row && newC >= 0 && newC < culumn
                && grid[newR][newC] == 1 {
                    grid[newR][newC] = 2
                    let newCode = newR * culumn + newC
                    badArr.append(newCode)
                    depth[newCode] = depth[code]! + 1
                    dep = depth[newCode]!
                }
            }
        }
        for i in 0..<row {
            for j in 0..<culumn {
                if grid[i][j] == 1 {
                    return -1
                }
            }
        }
        
        return dep
    }
}



//2 1 1
//0 1 1
//1 0 1




