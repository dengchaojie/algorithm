// demo，我没看明白

class Solution {
    func reverseWords(_ s: String) -> String {
        
        let arrayWord = s.split(separator: " ")
        var res = ""
        
        for (n, item) in arrayWord.enumerated() {
            if n == arrayWord.count - 1 {
                res += String(item.reversed())
            }else
            {
                res += String(item.reversed()) + " "
            }
        }
        return res
        
    }
}

let cl = Solution.init()
//print(cl.reverseWords("Let's take LeetCode contest"))
//print(cl.reverseWords("s'teL ekat edoCteeL tsetnoc"))
print(cl.reverseWords("contest"))

/*
 执行用时 :
 540 ms
 , 在所有 Swift 提交中击败了
 20.59%
 的用户
 内存消耗 :
 21.5 MB
 , 在所有 Swift 提交中击败了
 9.09%
 的用户
 炫耀一下:
 */
