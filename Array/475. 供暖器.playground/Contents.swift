
class Solution {
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        var banJing = 0
        let count1 = houses.count
        let count2 = heaters.count
        if count1 < count2 {
            return banJing
        }
        let chaFirst = heaters.first! - houses.first!
        let chaLast = houses.last! - heaters.last!
        let chaTwo = max(chaLast, chaFirst)
        var maxCha = max(heaters[0]-1, chaTwo)
        var chaNei = 0
        for index in 0...(count2-1) {
            if index + 1 <= (count2-1) {
                let cha = heaters[index + 1] - heaters[index]
                if chaNei < cha {
                    chaNei = cha
                }
            }
            
        }
        if chaNei / 2 > maxCha {
            banJing = chaNei / 2

        }else {
            banJing = maxCha
        }
        
        return banJing
    }
}

let obj = Solution.init()
print(obj.findRadius([1,2,3,5,15], [2,30]))


