import UIKit

var str = "Hello, playground"
//50
class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let g = g.sorted()
        let s = s.sorted()
        var res = 0
        var start = 0
        for item1 in g {
            if start < s.count {
                for j in start..<s.count{
                    if item1 <= s[j] {
                        start = j + 1
                        res += 1
                        break
                    }else {
                        continue
                    }
                }
            }
            
        }
        return res
    }
}
