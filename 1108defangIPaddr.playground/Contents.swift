
///
class Solution {
    func defangIPaddr(_ address: String) -> String {
        var chars = [Character]()
        
        let arrayChars = Array(address)
        for item in arrayChars {
            if item == Character(".") {
                chars.append(contentsOf: "[.]")
            }else
            {
                chars.append(item)
            }
        }
        return String(chars)
    }
}

let cl = Solution.init()
print(cl.defangIPaddr("1.1.1.1"))
print(cl.defangIPaddr("255.100.50.0"))

