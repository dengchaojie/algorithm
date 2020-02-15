//https://leetcode-cn.com/problems/zigzag-conversion/

/*55
 LEETCODEISHIRING
 012 3 456 7 8
 */
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        var rowsStr = Array(repeating: "", count: numRows)
        let middleCount = numRows - 2
        for (i,item) in s.enumerated() {
            let remain = i % numRows
            var str = rowsStr[remain]
            str.append(item)
            rowsStr[remain] = str
        }
        
        return rowsStr.joined()
        
    }
}


