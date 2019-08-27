
class Solution {
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        var banJing = 0
        let count1 = houses.count
        let count2 = heaters.count
        if count1 < count2 {
            return banJing
        }
        var minZhiJing = 25000
        for index in 0...(count2-1) {
            let currentWeiZhi = heaters[index];
            let currentZhiJing = houses[currentWeiZhi]
            if currentZhiJing < minZhiJing {
                minZhiJing = currentZhiJing
            }
        }
        banJing = minZhiJing / 2
        
        return banJing
    }
}

let obj = Solution.init()
print(obj.findRadius([1,2,3], [2]))


