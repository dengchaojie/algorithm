
class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        let count1 = pattern.count
        let arrayStr = str.split(separator: " ")
        let count2 = arrayStr.count
        if count1 != count2 {
            return false
        }
        var dict = [String : String]()
        var dict2 = [String : String]()
        for (n, c) in pattern.enumerated() {
            let key = "\(c)"
            let value = dict[key]
            if value != nil {
                if value == String(arrayStr[n]) {
                    
                }else
                {
                    return false
                }
            }else
            {
                dict[key] = String(arrayStr[n])
                dict2[String(arrayStr[n])] = key
            }
        }
        if dict.keys.count != dict2.keys.count {
            return false
        }
        return true
    }
}

let cl = Solution.init()
let res = cl.wordPattern("babb", "dog cat dog cat")
print(res)
