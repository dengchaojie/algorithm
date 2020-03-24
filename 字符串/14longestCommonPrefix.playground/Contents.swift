///
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var longestCommonPrefixChars = [Character](), index = 0
        guard let firstStr = strs.first  else {
            return String(longestCommonPrefixChars)
        }
        let firstStrChars = Array(firstStr)
        let strsChars = strs.map { Array($0)}
        while index < firstStrChars.count {
            longestCommonPrefixChars.append(firstStrChars[index])
            for str in strsChars {
                if index >= str.count {
                    return String(longestCommonPrefixChars.dropLast())
                }
                if str[index] != longestCommonPrefixChars[index] {
                    return String(longestCommonPrefixChars.dropLast())
                }
            }
            index += 1
        }
        
        return String(longestCommonPrefixChars)
    }
}
