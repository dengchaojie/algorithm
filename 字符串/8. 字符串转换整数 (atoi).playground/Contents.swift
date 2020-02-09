import UIKit

//https://leetcode-cn.com/problems/string-to-integer-atoi/
/*23
 
 */
//let d = "20000000000000000000"
//let num = Int(d)!
let b = -91283472332
let c = -2147483648
if b < c {
    print("dkdk")
}

let a = 2
let po = pow(2, 5)
print(po)

let arr = ["4","2"]
let str = arr.joined()
let arr2 = [Character("3"), Character("2")]
let str2 = String(arr2)
class Solution {
    func myAtoi2(_ str: String) -> Int {
        
        var res = 0, flag = 1, index = 0
        let intMax = 2147483647, intMin = -2147483648
        let strChars = Array(str)
        guard str.count > 0 else {
            return 0
        }
        // 去除开头的空格
        while index < str.count {
            let currentChar = strChars[index]
            
            guard currentChar.isWhitespace else {
                break
            }
            index += 1
        }
        // 判断第一个字符
        guard index < str.count else {
            return 0
        }
        let first = String(strChars[index])
        if first == "-"  {
            flag = -1
            index += 1
        }else if first == "+" {
            index += 1
        }
        // 遍历
        while index < str.count {
            let currentChar = strChars[index]
            guard currentChar.isNumber else {
                break
            }
            res = res * 10 + currentChar.wholeNumberValue!
            if res >= intMax {
                if flag == 1 {
                    return intMax
                }else if flag == -1 && res > intMax {
                    return intMin
                }
            }
            index += 1
        }
        
        return res * flag
        
    }
    
    func myAtoi(_ str: String) -> Int {
        if str.count == 0 {
            return 0
        }
        let nums = ["0","1","2","3","4","5","6","7","8","9"]
        var chars = Array(str)

        while !chars.isEmpty {
            let first = String(chars.first!)
            if nums.contains(first) {
                break
            }else if first == " " {
                chars.removeFirst()
            }else if first == "-" ||  first == "+" {
                if chars.count > 1 {
                    let second = String(chars[1])
                    if !nums.contains(second) {
                        return 0
                    }else {
                        break
                    }
                }else {
                    return 0
                }
            }else {
                return 0
            }
        }
        if chars.count == 0 {
            return 0
        }else if chars.count == 1 {
            if String(chars[0]) == "-" {
                return 0
            }
        }
//        print(chars)
        var validChars = chars
        for i in 0..<chars.count {
            let num = String(chars[i])
            if num == "-" || num == "+" {
                continue
            }
            if !nums.contains(num) {
                validChars = Array(chars[0...(i-1)])
                break
            }
        }
        
        
//        print(validChars)
        let res = Int(String(validChars))!
//        print(res)
        
        if res > 2147483647 {
            return 2147483647
        }else if res < -2147483648 {
            return -2147483648
        }
        
        return res
    }
    
    
    
}

let obj = Solution()
//obj.myAtoi("4193 with words")
obj.myAtoi("   -42")
//obj.myAtoi("words and 987")
//obj.myAtoi("+1")
