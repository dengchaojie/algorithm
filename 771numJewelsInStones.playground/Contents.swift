
class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var count = 0
        for item in J {
            for c in S {
                if item == c {
                    count += 1
                }
            }
        }
        return count
    }
}

let cl = Solution.init()
print(cl.numJewelsInStones("aA", "aAAbbbb"))
