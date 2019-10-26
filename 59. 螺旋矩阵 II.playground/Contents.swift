import UIKit
//https://leetcode-cn.com/problems/spiral-matrix-ii/
//si lu:


class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        let arrYiWei = Array.init(repeating: 0, count: n)
        var arr = Array.init(repeating: arrYiWei, count: n)
//        var arr = [[Int]]()
        var num = 0
        let target = n*n
        var l = 0, r = n-1, t = 0, b = n-1

        while num < target {
            for i in l...r {
                num += 1
                arr[t][i] = num
                if num == target {
                    return arr
                }
            }//从左到右
            t += 1
        
            for i in t...b {
                num += 1
                arr[i][r] = num

                if num == target {
                    return arr
                }

            }//从上到下
            r -= 1
        
            for i in (l...r).reversed() {
                num += 1
                
                arr[b][i] = num
                if num == target {
                    return arr
                }

            }//从右到左
            b -= 1

            for i in (t...b).reversed()  {
                num += 1
                arr[i][l] = num
                print("从下到上")
                print(num)
                if num == target {
                    return arr
                }

            }//从下到上
            l += 1
        }
        return arr

    }
}

let obj = Solution()
print(obj.generateMatrix(4))


//let arr = [1,2,3,4]
//for i in stride(from: 3, to: 2, by: -1) {
//    print(arr[i])
//}
