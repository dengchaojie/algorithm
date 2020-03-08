import UIKit

var str = "Hello, playground"

let arr = [0,1,0,0,0]
let set = Set(arr[0..<0])
//53
class Solution {
    func generateTheString(_ n: Int) -> String {
        if n == 1 {
            return "a"
        }
        var res = ""
        for _ in 0..<n-1 {
            res.append("a")
        }
        if n % 2 == 0 {
            res.append("b")
        }else{
            res.append("a")

        }
        return res
    }
    /*2,1,3,5,4
     如果当前位置的最大值，等于遍历的总个数，说明前面的灯都亮了。
     */
    func numTimesAllBlue(_ light: [Int]) -> Int {
        var maxValue = 0
        var ans = 0
        var sum = 0
        for item in light {
            maxValue = max(maxValue, item)
            sum += 1
            
            if maxValue == sum {
                ans += 1
            }
        }
        return ans
    }
    
    func numTimesAllBlue2(_ light: [Int]) -> Int {
        if light.count == 1 {
            return 1
        }
        var res = [Int]()
        
        var temp = Array(repeating: 0, count: light.count)
        for (i,item) in light.enumerated() {
            temp[item-1] = 1
            if i > 0 && temp[i-1] == 2 && temp[i] == 1 {
                temp[i] = 2
                res.append(i)
                continue
            }
            if temp[i] == 1 {
                let set = Set(temp[0...i])
                if set.contains(0) {
                    
                }else {
                    res.append(i)
                    for j in 0...i {
                        temp[j] = 2
                    }
                }
            }
            
        }
        
        return res.count
    }
    
}

let obj = Solution()
obj.numTimesAllBlue([2,1,3,5,4])
obj.numTimesAllBlue([3,2,4,1,5])
obj.numTimesAllBlue([4,1,2,3])
obj.numTimesAllBlue([2,1,4,3,6,5])
obj.numTimesAllBlue([1,2,3,4,5,6])





//1 2 3 4 5
//1 1 0 0 0
