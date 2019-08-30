
class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        if x > y {
            
            return String(y).count
        }else if x < y {
            return String(x).count
        }else if x == y {
            return String(x).count
        }
        
        return 0
    }
    
    func toBinary(_ num: Int) -> String {
        var mutStr = ""
        
        repeat {
            mutStr.append(contentsOf: String(num % 2))
        } while num != 0
        
        return ""
    }
    
}
