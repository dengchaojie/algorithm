
class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var chars = Array(s)
        if s.count == 1 {
            return s
        }
        if s.count < k {
            return reverseChars(&chars)
        }
        if s.count <= 2 * k {
            var subChars = Array(chars[0...k-1])
            let strReverse = reverseChars(&subChars)
            return strReverse + String(chars[k...chars.endIndex])
        }
        let count = chars.count / (2 * k)
//        var currentGroup = 0
        for n in 0...count-1 {
            
            var subChars = Array(chars[])
        }
        
        
        
        
        return ""
    }
    
    func reverseChars(_ chars: inout [Character]) -> String {

        var left = 0
        var right = chars.count - 1
        while left < right {
            let temp = chars[left]
            chars[left] = chars[right]
            chars[right] = temp
            left += 1
            right -= 1
        }
        return String(chars)
    }
    
}
