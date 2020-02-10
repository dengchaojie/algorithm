import UIKit

//https://leetcode-cn.com/problems/word-search/

/*24
 回溯
 */
class Solution {
    func exist2(_ board: [[Character]], _ word: String) -> Bool {
        guard board.count > 0 && board[0].count > 0 else {
            return false
        }
        guard word.count > 0 else {
            return false
        }
        let m = board.count
        let n = board[0].count
        var isVisited = Array(repeating: Array(repeating: false, count: n), count: m)
        let words = Array(word)
        
        for i in 0..<m {
            for j in 0..<n {
                if board[i][j] == words[0] &&
                    dfs(board, words, m, n, &isVisited, i, j, 0)
                    {
                    return true
                }
            }
        }
        
        return false
    }
    
    func dfs(_ board: [[Character]], _ words: [Character],_ m: Int, _ n: Int,_ isVisited: inout [[Bool]], _ i: Int, _ j: Int, _ index: Int) -> Bool {
        if index == words.count {
            return true
        }
        guard i >= 0 && j >= 0 && i < m && j < n else {
            return false
        }
        guard !isVisited[i][j] && board[i][j] == words[index] else {
            return false
        }
        isVisited[i][j] = true
        if dfs(board, words, m, n, &isVisited, i+1, j, index+1) ||
           dfs(board, words, m, n, &isVisited, i-1, j, index+1) ||
           dfs(board, words, m, n, &isVisited, i, j+1, index+1) ||
           dfs(board, words, m, n, &isVisited, i, j-1, index+1) {
            return true
        }
        isVisited[i][j] = false

        
        return false
    }
    //题意，理解错了，没有看到相邻
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var temp = [Character]()
        for item in board {
            temp.append(contentsOf: item)
        }
        var chars = Array(word)
        while !chars.isEmpty {
            let first = chars.first!
            if let index = temp.firstIndex(of: first) {
                temp.remove(at: index)
                chars.removeFirst()
            }else {
                break
            }
        }
        
        if chars.isEmpty {
            return true
        }else {
            return false
        }
    }
}

let obj = Solution()
obj.exist2([["a"]], "ab")

