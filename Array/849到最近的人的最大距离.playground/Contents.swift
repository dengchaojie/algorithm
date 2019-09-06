
//https://leetcode-cn.com/problems/maximize-distance-to-closest-person/
//找最大的连续0
class Solution {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        var dis = 0
        var isLeft = false
        var countLeft = 0
        if seats.first! == 0 {
            isLeft = true
        }
        var isRight = false
        var countRight = 0
        if seats.last! == 0 {
            isRight = true
        }
        var temp = 0
        var arr = [Int]()
        let len = seats.count - 1
        for (i,item) in seats.enumerated() {
            if item == 0 {
                temp += 1
                if i == len {
                    arr.append(temp)
                }
            }else
            {
                if i == 0 {
                    
                }else {
                    arr.append(temp)
                }
                temp = 0
            }
        }
        if isRight {
            countRight = arr.last!
        }
        if isLeft {
            countLeft = arr.first!
        }
        let sor = arr.sorted()
        let max = sor.last!
        var bianJie = countLeft
        if countLeft < countRight {
            bianJie = countRight
        }
        let neiBu = max / 2 + max % 2
        if bianJie < neiBu {
            dis = neiBu
        }else {
            dis = bianJie
        }
        return dis
    }
}

let obj = Solution()
//print(obj.maxDistToClosest([1,0,0,0,1,0,1]))
print(obj.maxDistToClosest([1,0,0,1]))

