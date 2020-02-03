import UIKit

//https://leetcode-cn.com/problems/merge-intervals/
// 21
class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        // 先按照有序的写
        var result = [[Int]]()
        var intervals = intervals
        intervals.sort { (a, b) -> Bool in
            a[0] < b[0]
        }
        
        for item in intervals {
            if var last = result.last {
                if last[1] >= item[0] {
                    if last[1] < item[1] {
                        last[1] = item[1]
                        result.removeLast()
                        result.append(last)
                    }else {
                        // 后者在前者内
                    }
                }else {
                    result.append(item)
                }
            }else {
                result.append(item)
            }
        }
        return result
    }
}


let obj = Solution()
//obj.merge([[1,3],[2,6],[8,10],[15,18]])
//obj.merge([[1,4],[4,5]])
obj.merge([[1,4],[1,5]])
