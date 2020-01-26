import UIKit

//https://leetcode-cn.com/problems/assign-cookies/
class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let gSorted = g.sorted()
        let sSorted = s.sorted()
        var i = 0
        for item in sSorted {
            if item >= gSorted[i] {
                i += 1
            }
            if i >= gSorted.count {
                return i
            }
        }
        return i
    }
}

