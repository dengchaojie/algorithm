

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var res = [String]()
        if n < 1 {
            return res
        }
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                res.append("FizzBuzz")
            }else if i % 3 == 0
            {
                res.append("Fizz")
                
            }else if i % 5 == 0
            {
                res.append("Buzz")
                
            }else
            {
                res.append("\(i)")
                
            }

        }
        return res
        
    }
    
}
/*
class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        if n >= 1 {
            var i = 1
            var strArray = Array<String>()
            while i <= n {
                
                if i % 3 == 0 && i % 5 == 0 {
                    strArray.append("FizzBuzz")
                }else if i % 3 == 0
                {
                    strArray.append("Fizz")

                }else if i % 5 == 0
                {
                    strArray.append("Buzz")
                    
                }else
                {
                    strArray.append("\(i)")

                }
                i += 1
            }
            
            return strArray
            
        }else
        {
            
            return ["-1"]
        }
        
        
    }
}

let cl = Solution.init()
let array = cl.fizzBuzz(15)
print(array)

/*
 执行用时 :
 68 ms
 , 在所有 Swift 提交中击败了
 36.00%
 的用户
 内存消耗 :
 20.7 MB
 , 在所有 Swift 提交中击败了
 5.00%
 的用户
 炫耀一下:
 
 执行用时 :
 44 ms
 , 在所有 Swift 提交中击败了
 80.00%
 的用户
 内存消耗 :
 20.7 MB
 , 在所有 Swift 提交中击败了
 5.00%
 的用户
 炫耀一下:
