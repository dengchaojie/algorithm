


class Some {
    func thing(_ x: Int, _ y: Int) -> Int {
        return x^y
    }
}

let ins = Some.init()
print(ins.thing(4,1))



class Solution {
    func totalHammingDistance(_ nums: [Int]) -> Int {
        
        var count = 0
        let len = nums.count
        if len == 0 || len == 1 {
            return count
        }
        if len == 2 {
            return self.hammingDistance(nums.first!, nums.last!)
        }
        if len > 10000 {
            return count
        }
        var currentIndex = 0
        for x in 0...len-2 {
            let qian = nums[x]
            currentIndex = x + 1
            for y in currentIndex...len-1 {
                let hou = nums[y]
                count += self.hammingDistance(qian, hou)
            }
        }
        
        return count
        
    }
    
    
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
            count = 0
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
print(obj.totalHammingDistance([4,14,4]))



/**
var count = 0
var result = x^y
while result>0 {
    count += result&1
    result /= 2
}
return count
**/
