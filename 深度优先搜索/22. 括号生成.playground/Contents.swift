import UIKit

//https://leetcode-cn.com/problems/generate-parentheses/
/*44 生成有效的括号
 回溯，先加入左括号，
 */
class Solution {
    var i = 0, j = 0

    func generateParenthesis(_ n: Int) -> [String] {
        var paths = [String](), path = ""
        dfs(&paths, path, n, n)
        return paths
    }
    
    func dfs(_ paths:inout [String],_ path: String, _ leftRemaining: Int, _ rightRemaining: Int) {
        if rightRemaining == 0 {
            paths.append(path)
            return
        }
        // 先进行做括号，如果左括号的数量大于0
        if leftRemaining > 0 {
//            print("aaa")
//            i += 1
//            print(i)
//            print("bbb")

            dfs(&paths, path + "(", leftRemaining - 1, rightRemaining)
        }
        //
        if rightRemaining > leftRemaining {
//            print("ccc")
//            j += 1
//            print(j)
//            print("ddd")

            dfs(&paths, path + ")", leftRemaining, rightRemaining - 1)
        }
    }
}

let obj = Solution()
obj.generateParenthesis(3)
// ( 2 3
// (( 1 3
// ((( 0 3
// ((() 0 2
// ((()) 0 1
// ((())) 0 0

// ( 2 3
// () 2 2


