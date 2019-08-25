
class Solution {
    func reverseVowels(_ s: String) -> String {
        var left = 0
        var right = s.count - 1
        var chars = Array(s)
        while left < right {
            while left < right && !isVowel(chars[left]) {
                left += 1
            }
            while left < right && !isVowel(chars[right]) {
                right -= 1
            }
            guard left < right else {
                break
            }
            jiaoHuanVowel(chars: &chars, left: left, right: right)
            left += 1
            right -= 1
        }
        
        return String(chars)
    }
    
    func isVowel(_ char: Character) -> Bool {
        let xiaoXie = String(char).lowercased()
        if xiaoXie == "a" ||
            xiaoXie == "e" ||
            xiaoXie == "i" ||
            xiaoXie == "o" ||
            xiaoXie == "u"
        {
            return true
        }
        return false
    }
    
    func jiaoHuanVowel(chars: inout [Character],  left: Int, right: Int) -> Void {
        let temp = chars[left]
        chars[left] = chars[right]
        chars[right] = temp
    }
}
/// 被示例误导了，不需要对称的位置上都是元音，才交换
/*
class Solution {
    func reverseVowels(_ s: String) -> String {
        let arrayYuanYin = ["a", "e", "i", "o", "u"]
        
        let count = s.count
        let shang = count / 2
        if count % 2 == 0
        {// ou shu leetcode
            
        }else
        {// ji shu hello
            
            let index = s.index(of: ",")
            let strHou = String(s[s.startIndex...shang])
            
//            for item in <#items#> {
//                <#code#>
//            }
        }
        
        
        return ""
    }
}
*/
