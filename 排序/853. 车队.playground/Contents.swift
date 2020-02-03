import UIKit

//https://leetcode-cn.com/problems/car-fleet/
// 55
// 第一个问题：cars[t-1] = cars[t];这里写反了吧？需要将后者的时间设置成前者的时间，因为前者的时间大。
// 第二个问题：(t == 0 ? 1 : 0)，执行到这里，t==0始终成立，是吧？
class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var cars = [Car]()
        
        let count = position.count
        for i in 0..<count {
            let car = Car(position[i], Double((target - position[i])) / Double(speed[i]))
            cars.append(car)
        }
        cars.sort { (a, b) -> Bool in
            return a.position > b.position
        }
        var result = 0, j = count - 1
        while j > 0 {
            if cars[j - 1].time >= cars[j].time {
               cars[j].time = cars[j - 1].time
//                print("kdk")
            }else {
                result += 1
//                print("abc")

            }
            j -= 1
        }
        print(result)
        print(j)
        print("----")
        return result + (j == 0 ? 1 : 0)
    }
}


class Car {
    let position: Int
    var time: Double
    
    init(_ position: Int, _ time: Double) {
        self.position = position
        self.time = time
        
    }
    
}

let obj = Solution()
//obj.carFleet(10, [6,8], [3,2])
obj.carFleet(10, [0, 4, 2], [2, 1, 3])


//4 2
//1.33 1
//8 6
//1 1.33

//0 4 2 10 6 8
//2 1 3 5 6 2.6
//10   8   6
//5    2.6 5


