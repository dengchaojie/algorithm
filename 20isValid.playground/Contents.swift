
// array
class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count == 0 {
            return true
        }
        if s.count % 2 != 0 {
            return false
        }
        
        
        
        var leftChars = [Character]()
//        var rigtChars = [Character]()

        let chars = Array(s)
        for item in chars {
            let str = String(item)
            if str == "(" || str == "{" || str == "[" {
                leftChars.append(item)
            }else if str == ")" {
                if leftChars.isEmpty {
                    return false
                }else {
                    let char = leftChars.last
                    let lastStr = String(char!)
                    if lastStr == "(" {
                        leftChars.removeLast()
                    }else {
                        return false
                    }
                }
            }else if str == "}" {
                if leftChars.isEmpty {
                    return false
                }else {
                    let char = leftChars.last
                    let lastStr = String(char!)
                    if lastStr == "{" {
                        leftChars.removeLast()
                    }else {
                        return false
                    }
                }

            }else if str == "]" {
                if leftChars.isEmpty {
                    return false
                }else {
                    let char = leftChars.last
                    let lastStr = String(char!)
                    if lastStr == "[" {
                        leftChars.removeLast()
                    }else {
                        return false
                    }
                }

            }else {
                return false
            }
        }

        if leftChars.isEmpty {
            return true

        }else {
            return false
            
        }
    }
}

let cl = Solution.init()
print(cl.isValid("()[]{}"))
print(cl.isValid("(]"))
print(cl.isValid("]("))
print(cl.isValid("{[]}"))



