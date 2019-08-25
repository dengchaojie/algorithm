///下面还有一个算法，理解错了：后面的字符串包含前面的字符串，返回true。
///题目的意思是前面字符串每个字符出现的次数，要小于等于后面的；

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var map = strToMap(magazine)
        for item in ransomNote {
            if map[item] == nil {
                return false
            }else if map[item]! == 0
            {
                return false
            }else
            {
                map[item]! -= 1
            }
        }
        return true
    }
    
    func strToMap(_ originalStr: String) -> [Character : Int] {
        var map = [Character : Int]()
        for item in originalStr {
            if map[item] == nil {
                map[item] = 1
            }else
            {
                map[item]! += 1
            }
        }
        return map
    }
    
}

let cl = Solution.init()
print(cl.canConstruct("fffbfg", "effjfggbffjdgbjjhhdegh"))


/*
class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        
        if ransomNote == magazine {
            return true
        }
        if ransomNote.count == 0 {
            return true
        }
        let chars_magazine = Array(magazine)
        var currentIndex = 0
        while currentIndex < chars_magazine.count {
            for (n, c) in ransomNote.enumerated() {
                let index = currentIndex + n
                if index >= chars_magazine.count {
                    return false
                }
                if c == chars_magazine[index]
                {
                    if n == ransomNote.count - 1 {
                        return true
                    }
                }else
                {
                    currentIndex += 1
                    break
                }
            }
            currentIndex += 1
        }
        return false
    }
}

let cl = Solution.init()
//print(cl.canConstruct("a", "b"))
print(cl.canConstruct("aa", "ab"))
print(cl.canConstruct("aa", "aab"))

*/
