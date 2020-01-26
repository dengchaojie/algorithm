import UIKit

//https://leetcode-cn.com/problems/add-binary/
//06
// 将字符串转成数组，从后往前相加，迭代
class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var sum = 0, carry = 0, res = ""
        let aArr = Array(a), bArr = Array(b)
        var i = aArr.count - 1, j = bArr.count - 1
        while i >= 0 || j >= 0 || carry > 0 {
            // 前一次累加，产生的进位，可能是0或者是1
            sum = carry
            if i >= 0 {
                // 加上左边的
                sum += Int(String(aArr[i]))!
                i -= 1
            }
            if j >= 0 {
                // 加上右边的
                sum += Int(String(bArr[j]))!
                j -= 1
            }
            // 产生的进位
            carry = sum / 2
            // 这个位置上的结果
            sum = sum % 2
            // 拼接上新的字符串
            res = String(sum) + res
        }
        return res
    }
}
