//https://leetcode-cn.com/problems/zigzag-conversion/

/*52
 LEETCODEISHIRING
 012 3 456 7 8
 */
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows > 1 else {
            return s
        }
        var rowsStr = Array(repeating: "", count: numRows)
        var row = 0
        var s = s
        while !s.isEmpty {
            if row < numRows {
                let item = s.removeFirst()
                var str = rowsStr[row]
                str.append(item)
                rowsStr[row] = str
                row += 1
            }else if row == numRows {
                row -= 2
                while !s.isEmpty && row > 0 {
                    let item = s.removeFirst()
                    var str = rowsStr[row]
                    str.append(item)
                    rowsStr[row] = str
                    row -= 1
                }
                
            }
        }
        return rowsStr.joined()
        
    }
}


let obj = Solution()
obj.convert("abcdefg", 3)

/*
 a    e
 b d  f
 c    g
 
 */
