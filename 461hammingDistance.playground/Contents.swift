
class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var count = 0
        if x > y {
            let xB = self.toBinary(x)
            var yB = self.toBinary(y)
            if xB.count > yB.count {
                for _ in 0...(xB.count - yB.count-1) {
                    yB.insert(Character.init("0"), at: yB.startIndex)
                }
            }
            let arrxB:[Character] = Array(xB)
            let arrYB:[Character] = Array(yB)
            for (n, c) in arrYB.enumerated() {
                if String(c) != String(arrxB[n])  {
                    count += 1
                }
            }
        }else if x < y {
            var xB = self.toBinary(x)
            let yB = self.toBinary(y)
            if xB.count < yB.count {
                for _ in 0...(yB.count - xB.count-1) {
                    xB.insert(Character.init("0"), at: xB.startIndex)
                }
            }
            let arrxB:[Character] = Array(xB)
            let arrYB:[Character] = Array(yB)
            for (n, c) in arrxB.enumerated() {
                if String(c) != String(arrYB[n])  {
                    count += 1
                }
            }
        }else if x == y {
            count = String(x).count
        }
        
        return count
    }
    
    func toBinary(_ num: Int) -> String {
        var mutStr = ""
        var shang = num
        repeat {
            mutStr.insert(Character.init(String(shang % 2)), at: mutStr.startIndex)
            shang = shang / 2
        } while shang != 0

        return mutStr
    }
    
}


let obj = Solution.init()
print(obj.hammingDistance(8, 7))
