//: [Previous](@previous)

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let str = "\(x)"
        
        let strReverse = String(str.reversed())
        if str == strReverse {
            return true
        }
        return false
        
    }
}

//: [Next](@next)
