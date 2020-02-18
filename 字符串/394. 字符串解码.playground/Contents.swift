//https://leetcode-cn.com/problems/decode-string/


class Solution {
    func decodeString(_ s: String) -> String {
        
        var chars = Array(s)
        var result = ""
        var keys = ""
        var values = ""
        var isKey = true
        while !chars.isEmpty {
            let first = chars.first!
            if first == "[" {
                isKey = false
            }else if first == "]" {
                isKey = true
                if let times = Int(keys) {
                    for _ in 0..<times {
                        result += values
                    }
                    keys = ""
                    values = ""
                }
                
            }else {
                if isKey {
                    keys.append(first)
                }else {
                    values.append(first)
                }
            }
            chars.removeFirst()
            
        }
        
        return result
    }
}

let obj = Solution()
obj.decodeString("2[abc]3[cd]ef")

