import UIKit

//https://leetcode-cn.com/problems/rotated-digits/
// 02
class Solution {
    let unValidDigits = Array("347")
    let validDigits = Array("2569")

    
    func rotatedDigits(_ N: Int) -> Int {
        var temp = N
        var count = 0
        while temp >= 1 {
            if isValidDigit(temp) {
                count += 1
                print(temp)
            }
            temp -= 1
        }
        
        return count
    }
    
    func isValidDigit(_ digit: Int) -> Bool {
        let str = String(digit)
        for item in unValidDigits {
            if str.contains(item) {
                return false
            }
        }
        var isContainedValidDigit = false
        for item in validDigits {
            if str.contains(item) {
                isContainedValidDigit = true
                break
            }
        }
        if isContainedValidDigit == false {
            return false
        }
        
        return true
    }
    
}

let obj = Solution()
obj.rotatedDigits(10)

