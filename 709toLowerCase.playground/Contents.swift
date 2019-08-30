
class Solution {
    func toLowerCase(_ str: String) -> String {
//        return str.lowercased()
        let uperChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let lowerChars = Array("abcdefghijklmnopqrstuvwxyz")

        var chars = [Character]()
        for item in str {
            chars.append(item)
            for (n, c) in uperChars.enumerated() {
                if item == c {
                    chars.removeLast()
                    let newItem = lowerChars[n]
                    chars.append(newItem)
                    break
                }
            }
        }
        return String(chars)
    }
}


let cl = Solution.init()
print(cl.toLowerCase("HeLLo"))

