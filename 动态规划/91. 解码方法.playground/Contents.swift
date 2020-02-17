
//https://leetcode-cn.com/problems/decode-ways/
//10
class Solution {
    // dp[i] = dp[i-1] + dp[i-2]
    func numDecodings(_ s: String) -> Int {
        let chars = Array(s)
        var dp = Array(repeating: 0, count: s.count+1)
        dp[0] = 1
        //从后面开始前推，为什么当前i的字符的数量，由前面的i-1和i-2决定？
        //12
        for i in 1...s.count {
            if chars[i-1] != "0" {
                dp[i] += dp[i-1]
            }
            //226
            if i>1 && isValid(chars, i-2, i-1) {
                dp[i] += dp[i-2]
            }
            print(dp[i])
        }
        
        return dp[s.count]
    }
    
    func isValid(_ chars: [Character], _ start: Int, _ end: Int) -> Bool {
        guard let num = Int(String(chars[start...end])) else {
            fatalError()
        }
        return num >= 10 && num <= 26
    }
    
    func numDecodings2(_ s: String) -> Int {
        if s.count == 1 {
            if let idx = Int(s) {
                if idx <= 26 && idx >= 1 {
                    return 1
                }else {
                    return 0
                }
            }else {
                return 0
            }
        }
        let arr = ["A","B","C","D","E","F","G","H","I","J"
        ,"K","L","M","N","O","P","Q","R","S","T"
            ,"U","V","W","X","Y","Z"]
        var combinations = [String]()
        var combination = ""
        dfs(s, arr, &combinations, &combination, 0)
        return combinations.count
        
    }
    
    func dfs(_ s: String ,_ arr: [String], _ combinations: inout [String], _ combination: inout String, _ index: Int) {
        if index == s.count {
            combinations.append(combination)
            return
        }
        if s.count >= 2 {
            
        }else {
            
        }
        
        
    }
}


let obj = Solution()
obj.numDecodings("226")

