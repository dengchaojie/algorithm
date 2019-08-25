// 字符串转出数组，取出第一个字符，和后面的每一个字符判等 loveleetcode

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        if s.count == 0 {
            return -1
        }
        if s.count == 1 {
            return 0
        }
        var dict = [Character: Bool]()
        for item in s {
            if dict[item] != nil {
                dict[item] = true

            }else
            {
                dict[item] = false
            }
        }
        
        for (n, c) in s.enumerated() {
            if !dict[c]! {
                return n
            }
        }
        return -1
        
    }
}
let cl = Solution.init()
//let res = cl.firstUniqChar("leetcode")
let res = cl.firstUniqChar("loveleetcode")
//let res = cl.firstUniqChar("aadadaad")

print(res)

/*
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        if s.count == 0 {
            return -1
        }
        if s.count == 1 {
            return 0
        }
        var sameArray = [String]()
        var dict = Dictionary<String, Int>()
        for (n, item) in s.enumerated() {
            let str = String(item)
            if sameArray.contains(str) {
                dict[str] = nil
                continue
            }
            if dict.keys.contains(str) {
                dict[str] = nil
                sameArray.append(str)
                continue
            }else
            {
                
                dict[str] = n
            }
        }
        if dict.values.count > 0 {
            var min = s.count
            for item in dict.values {
                if min > item {
                    min = item
                }
            }
            return min
        }
        return -1
        
        
    }
    
}

let cl = Solution.init()
let res = cl.firstUniqChar("leetcode")
//let res = cl.firstUniqChar("loveleetcode")
//let res = cl.firstUniqChar("aadadaad")

print(res)
*/
/*
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        if s.count == 0 {
            return -1
        }
        if s.count == 1 {
            return 0
        }
        
        var arrayChar = [String]()
        for item in s.enumerated() {
            let str = String(item.element)
            arrayChar.append(str)
        }
        var sameArray = [String]()
        
        var isHaveEqueue = false
        for i in 0...arrayChar.count-2 {
            let currentChar = arrayChar[i]
            if sameArray.contains(currentChar) {
                continue
            }
            
            print(currentChar)
            for j in (i+1)...arrayChar.count-1 {
                print(arrayChar[j])
                if currentChar == arrayChar[j] {
                    sameArray.append(currentChar)
                    isHaveEqueue = true
                    break
                }
                
            }
            if isHaveEqueue {
                //                continue
                isHaveEqueue = false
            }else
            {
                return i
            }
        }
        let lastStr = arrayChar.last
        if sameArray.contains(lastStr!) == false
        {
            return arrayChar.count - 1
        }
        return -1
        
        
        
    }
}

let cl = Solution.init()
//let res = cl.firstUniqChar("leetcode")
//let res = cl.firstUniqChar("loveleetcode")
let res = cl.firstUniqChar("aadadaad")

print(res)
*/

/**
 执行用时 :
 972 ms
 , 在所有 Swift 提交中击败了
 13.63%
 的用户
 内存消耗 :
 21.2 MB
 , 在所有 Swift 提交中击败了
 6.38%
 的用户
 炫耀一下:
 
 给定一个字符串，找到它的第一个不重复的字符，并返回它的索引。如果不存在，则返回 -1。
 
 案例:
 
 s = "leetcode"
 返回 0.
 
 s = "loveleetcode",
 返回 2.
   
 
 注意事项：您可以假定该字符串只包含小写字母。
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/first-unique-character-in-a-string
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 **/
