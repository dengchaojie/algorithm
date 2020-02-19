//https://leetcode-cn.com/problems/decode-string/


class Solution {
    func decodeString(_ s: String) -> String {
        var result = ""
        var resultStack = [String]()
        var countStack = [Int]()
        var i = 0
        let chars = Array(s)
        let allowedDigits = ["0","1","2","3","4","5","6","7","8","9"]
        
        while i < s.count {
            if allowedDigits.contains(String(chars[i])) {
                var count = 0
                while allowedDigits.contains(String(chars[i])) {
                    count = count * 10 + Int(String(chars[i]))!
                    i += 1
                }
                countStack.append(count)
            }else if chars[i] == "[" {
                resultStack.append(result)
                result = ""
                i += 1
            }else if chars[i] == "]" {
                if var temp = resultStack.popLast(), let count = countStack.popLast() {
                    for _ in 0..<count {
                        temp.append(result)
                    }
                    result = temp
                }
                i += 1
            }else {
                result.append(chars[i])
                i += 1
            }
        }
        
        return result
        
    }
    func decodeString2(_ s: String) -> String {
        
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

