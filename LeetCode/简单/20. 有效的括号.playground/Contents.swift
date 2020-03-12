import UIKit
// sunday03
class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count == 0 {
            return true
        }
        var stack = [Character]()
        for char in s {
            if char == ")" {
                let last = stack.last
                if last == Character("(") {
                    stack.removeLast()
                }else {
                    stack.append(char)
                }
            }else if char == "]" {
                let last = stack.last
                if last == Character("[") {
                    stack.removeLast()
                }else {
                    stack.append(char)
                }
            }else if char == "}" {
                let last = stack.last
                if last == Character("{") {
                    stack.removeLast()
                }else {
                    stack.append(char)
                }
            }else {
                stack.append(char)
            }
            
        }
        return stack.isEmpty
        
        
    }
}

let obj = Solution()
obj.isValid("()[]{}")
obj.isValid("([)]")
obj.isValid("{[]}")
obj.isValid("]")
