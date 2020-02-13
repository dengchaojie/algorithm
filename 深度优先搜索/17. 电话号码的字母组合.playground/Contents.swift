//https://leetcode-cn.com/problems/letter-combinations-of-a-phone-number/

// 深度优先搜索，先组合好每个元素，加入最终数组中

class Solution {
    let digitToStr = [
        "",
        "",
        "abc",
        "def",
        "ghi",
        "jkl",
        "mno",
        "pqrs",
        "tuv",
        "wxyz"
    ]
    
    func letterCombinations(_ digits: String) -> [String] {
        guard digits.count > 0 else {
            return [String]()
        }
        
        var combinations = [String](), combination = ""
        dfs(&combinations, &combination, digits, 0)
        return combinations
    }
    
    // 深度优先搜索
    func dfs(_ combinations: inout [String], _ combination: inout String, _ digits: String, _ index: Int) {
        if combination.count == digits.count {
            combinations.append(combination)
            return
        }
        let digitStr = fetchCurrentDigitStr(digits, index)
        for item in digitStr {
            combination.append(item)
            dfs(&combinations, &combination, digits, index + 1)
            combination.removeLast()
        }
        
    }
    // 获取数字对应的字符串
    func fetchCurrentDigitStr(_ digits: String, _ index: Int) -> String {
        guard index >= 0 && index < digits.count else {
            fatalError()
        }
        let currentDigit = digits[digits.index(digits.startIndex, offsetBy: index)]
        guard let digit = Int(String(currentDigit)), digit >= 0, digit < digitToStr.count else {
            fatalError("invalid digit")
        }
        return digitToStr[digit]
        
    }
    
}


let obj = Solution()
obj.letterCombinations("23")
