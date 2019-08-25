
class Solution
{
    func addStrings(_ num1: String, _ num2: String) -> String
    {
        let num1Chars = Array(num1.reversed())
        let num2Chars = Array(num2.reversed())
        
        var i = 0, j = 0, sum = 0, carray = 0
        var res = ""
        while i < num1Chars.count || j < num2Chars.count || carray != 0 {
            sum = carray
            if i < num1Chars.count {
                sum += Int(String(num1Chars[i]))!
                i += 1
            }
            if j < num2Chars.count {
                sum += Int(String(num2Chars[j]))!
                j += 1

            }
            
            carray = sum / 10
            sum = sum % 10
            res.append(String(sum))
        }
        
        return String(res.reversed())
    }
    
}

let cl = Solution.init()
//let str = cl.addStrings("2392", "847")
let str = cl.addStrings("9", "99")

print(str)


/*
// 拆成字符，每一个字符相加，进位参与下一轮的相加，2392 0847
class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var str1Array = Array<String>()
        var str2Array = Array<String>()

        let c1Array = num1.reversed()
        let c2Array = num2.reversed()
        for item in c1Array{
            str1Array.append("\(item)")
        }
        for item in c2Array {
            str2Array.append("\(item)")
        }
        var resuleString = ""
        var upNum = 0
        var maxArray = Array<String>()
        var minArray = Array<String>()

        if str1Array.count >= str2Array.count {
            maxArray = str1Array
            minArray = str2Array
        }else if str1Array.count < str2Array.count
        {
            maxArray = str2Array
            minArray = str1Array
        }
        let newStrArray = minArray + Array.init(repeating: "0", count: maxArray.count - minArray.count)
        
        for (n, item) in newStrArray.enumerated() {
            let sum = Int(maxArray[n])! + Int(item)! + upNum
            if sum >= 10 {
                resuleString = resuleString + "\(sum - 10)"
                upNum = 1
            }else
            {
                resuleString = resuleString + "\(sum)"
                upNum = 0
            }
            
        }

        if upNum == 1 {
            resuleString = resuleString + "\(1)"
        }else
        {
            
        }
        var endStr = ""
        for item in resuleString.reversed() {
            endStr = endStr + "\(item)"
        }
        return endStr
//        return "-1"
    }
    
}


let cl = Solution.init()
let str = cl.addStrings("2392", "847")
//let str = cl.addStrings("9", "99")

print(str)

/*
 执行用时 :
 48 ms
 , 在所有 Swift 提交中击败了
 81.25%
 的用户
 内存消耗 :
 21.2 MB
 , 在所有 Swift 提交中击败了
 5.55%
 的用户
 炫耀一下:
 
 执行用时 :
 68 ms
 , 在所有 Swift 提交中击败了
 68.75%
 的用户
 内存消耗 :
 21.5 MB
 , 在所有 Swift 提交中击败了
 5.55%
 的用户
 炫耀一下:
 */
