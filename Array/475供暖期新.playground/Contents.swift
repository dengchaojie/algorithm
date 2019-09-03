

class Solution {
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        var maxBanJing = 0
        var arrMinCha:[Int] = []
        for m in houses {
            var minCha = 10*10*10*10*10*10*10*10*10
            for n in heaters {
                var cha = 0
                if n > m {
                    cha = n - m
                }else {
                    cha = m - n
                }
                if cha < minCha {
                    minCha = cha
                }
            }
            arrMinCha.append(minCha)
        }
        let newArr = arrMinCha.sorted()
        maxBanJing = newArr.last ?? 0
        return maxBanJing
    }

}


let obj = Solution.init()
print(obj.findRadius([101027544, 144108930, 282475249, 457850878, 458777923, 470211272, 622650073, 984943658], [16531729, 74243042, 114807987, 115438165, 137522503, 143542612, 441282327, 784484492, 823378840, 823564440]))
print(obj.findRadius([1,2,3], [2]))


//class Solution {
//    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
//        var banJing = 0
////        let count1 = houses.count
//        let count2 = heaters.count
//        let newHou = houses.sorted()
//        let newHea = heaters.sorted()
//
//        var chaFirst = -1
//        var chaLast = 0
//        var chaNei = 0
//        for index in 0...(count2-1) {
//            if newHea[index] < newHou.first! {
//                continue
//            }
//            if newHea[index] > newHou.last! {
//                continue
//            }
//            if chaFirst >= 0 {
//
//            }else {
//                chaFirst = newHea[index] - newHou.first!
//            }
//            if index + 1 <= (count2-1) {
//                if newHea[index + 1] < newHou.first! {
//                    continue
//                }
//                if newHea[index + 1] > newHou.last! {
//                    continue
//                }
//                chaLast = newHou.last! - newHea[index + 1]
//
//                let cha = newHea[index + 1] - newHea[index]
//                if chaNei < cha {
//                    chaNei = cha
//                }
//            }
//        }
//        let maxCha = max(chaFirst, chaLast)
//        if chaNei / 2 > maxCha {
//            banJing = chaNei / 2
//
//        }else {
//            banJing = maxCha
//        }
//
//        return banJing
//    }
//}
//
//let obj = Solution.init()
//print(obj.findRadius([101027544, 144108930, 282475249, 457850878, 458777923, 470211272, 622650073, 984943658], [16531729, 74243042, 114807987, 115438165, 137522503, 143542612, 441282327, 784484492, 823378840, 823564440]))


