import UIKit

//https://leetcode-cn.com/problems/pascals-triangle-ii/


class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        
        var res = [1]
        for i in 1..<rowIndex+1 {
            res.insert(0, at: 0)
            for j in 0..<i {
                res[j] = res[j] + res[j+1]
            }
        }
        
        
        return res
    }
}


let obj = Solution()
obj.getRow(4)
//当row等于2时
//1...3
//0 1
//当i == 1  j == 0    --1 1
//当i==2， j == 0, [0 1 1]  ==1 [1,2,1]

//    # j行的数据, 应该由j - 1行的数据计算出来.
//    # 假设j - 1行为[1,3,3,1], 那么我们前面插入一个0(j行的数据会比j-1行多一个),
//    # 然后执行相加[0+1,1+3,3+3,3+1,1] = [1,4,6,4,1], 最后一个1保留即可.
//# 因为i行的数据长度为i+1, 所以j+1不会越界, 并且最后一个1不会被修改.
//作者：leicj
//链接：https://leetcode-cn.com/problems/pascals-triangle-ii/solution/python3-yang-hui-san-jiao-ii-by-leicj/
//来源：力扣（LeetCode）
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
