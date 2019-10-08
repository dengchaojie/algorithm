


class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0
        }
        if needle.count > haystack.count {
            return -1
        }
        if needle.count == haystack.count && needle != haystack {
            return -1
        }
        let arrayHaystack = Array(haystack)
        let arrayNeedle = Array(needle)
        
        var index = 0
        var beginIndex = 0
        while index < arrayHaystack.count {
            
            for item in arrayNeedle {
                if c == item {
                    
                }else
                {
                    
                }
            }
        }

        
        return -1
    }
}
