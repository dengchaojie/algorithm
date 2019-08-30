let a = 2<<31
print(a)

class Solution {
    let a = 2<<31
    func reverse(_ x: Int) -> Int {
        if x > 0 {
            if x > 2<<31 - 1 {
                return 0
            }
            var strReverse = ""
            
            let str = "\(x)"
            let strReverseArray = str.reversed()
            for (_, c) in strReverseArray.enumerated() {
                if c == "0" && strReverse.count == 0 {
                    
                }else
                {
                    strReverse = strReverse + "\(c)"
                }
            }
            let result = Int(strReverse)!
            if result > 2<<31 - 1 {
                return 0
            }
            return result
        }else if x < 0
        {
            if x < -2<<31 {
                return 0
            }
            var strReverse = "-"
            let str = "\(x)"
            let strReverseArray = str.reversed()
            for (_, c) in strReverseArray.enumerated() {
                if c == "0" && strReverse.count == 0 {
                    
                }else
                {
                    if c == "-" {
                        
                    }else
                    {
                        strReverse = strReverse + "\(c)"
                    }
                }
            }
            let result = Int(strReverse)!
            if result < -a {
                return 0
            }
            return result
        }else
        {
            return 0
        }
        
        
    }
}

let cl = Solution.init()
let result = cl.reverse(1563847412)
print(result)



/*给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。
 
 示例 1:
 
 输入: 123
 输出: 321
   示例 2:
 
 输入: -123
 输出: -321
 示例 3:
 
 输入: 120
 输出: 21
 注意:
 
 假设我们的环境只能存储得下 32 位的有符号整数，则其数值范围为 [−231,  231 − 1]。请根据这个假设，如果反转后整数溢出那么就返回 0。
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reverse-integer
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
