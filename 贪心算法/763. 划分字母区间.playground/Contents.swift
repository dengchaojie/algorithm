import UIKit

//https://leetcode-cn.com/problems/partition-labels/
// 12。剩余12天
//当一个新的字符来了，判断前面的数组是否包含这个字符，如果第一个包含，那么这个字符前面的所有的
// 数组要合并

class Solution {
    func partitionLabels(_ S: String) -> [Int] {
        var tempArr = [String]()
        for item in S {
            var tempStr = ""
            for index in 0..<tempArr.count {
                let str = tempArr[index]
                if str.contains(item) {
                    // 合并字符串
                    for j in index..<tempArr.count {
                        tempStr = tempStr + tempArr[j]
                        
                    }
                    tempStr = tempStr + String(item)
                    tempArr[index] = tempStr
                    tempArr = Array(tempArr[0...index])
                    break
                }
            }
            if tempStr.count == 0 {
                tempArr.append(String(item))
            }
        }
        var result = [Int]()
        for item in tempArr {
            result.append(item.count)
        }
        return result
    }
}

let obj = Solution()
obj.partitionLabels("ababcbacadefegdehijhklij")


// 我竟然做出来了，这么牛掰
