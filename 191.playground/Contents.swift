
class Solution {
    
    func hammingWeight(_ n: UInt32) -> Int {
        var count = 0
        var mutStr = ""
        var shang = n
        repeat {
            let yu = String(shang % 2)
            if yu == "1" {
                count += 1
            }
            mutStr.insert(Character.init(yu), at: mutStr.startIndex)
            shang = shang / 2
        } while shang != 0
    
        return count
        
    }
};


let obj = Solution.init()
print(obj.hammingWeight(11))
