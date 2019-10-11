import UIKit

//https://leetcode-cn.com/problems/pascals-triangle/
//1行1行的做
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var res = [[Int]]()
        if numRows == 0 {
            return res
        }else if numRows == 1
        {
            res.append([1])
            return res
        }else if numRows == 2
        {
            res.append([1])
            res.append([1,1])
            return res
        }else {
            res.append([1])
            res.append([1,1])
        }
        
        for i in 2...(numRows-1) {
            var temp = [1]
            for j in 1..<(i)
            {
                let preArr = res[i-1]
                let new = preArr[j-1] + preArr[j]
                temp.append(new)
            }
            temp.append(1)
            res.append(temp)
        }
        
        return res
    }
}


let obj = Solution()
print(obj.generate(5))
