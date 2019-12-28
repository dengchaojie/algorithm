//https://leetcode-cn.com/problems/daily-temperatures/

class Solution {
    func dailyTemperatures(_ T: [Int]) -> [Int] {
        var ret = [Int]()
        let sort = T.sorted()
        if sort.first == sort.last {
            for _ in T {
                ret.append(0)
                return ret
            }
        }
        let lastIndex = T.count - 1
        for (i, item) in T.enumerated() {
            if i == lastIndex {
                ret.append(0)
            }else {
                let day = days(index: i + 1, item: item, T: T)
                ret.append(day)
            }
        }
        return ret
    }
    
    func days(index: Int, item: Int, T: [Int]) -> Int {
        var day = 0
        for i in index..<T.count {
            let a = T[i]
            if a > item {
                day = i - index + 1
                return day
            }
        }
        return day
    }
    
}


let obj = Solution.init()
print(obj.dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73]))


