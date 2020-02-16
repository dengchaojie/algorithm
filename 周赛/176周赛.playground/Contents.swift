// 5340 5341 5342

var arr = [1,1, 2, 3,4, 2,2]
let set = Set(arr[1...])
print(arr)

// 7  4  5  4
// 0 1 2 3
class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var res = 0
        let n = grid[0].count
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] < 0 {
                    res += (n - j)
                    break
                }
            }
        }
        return res
        
    }
}


let obj = Solution()
obj.countNegatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]])



class ProductOfNumbers {

    var nums = [Int]()
    var zeros = [Int]()
    var unOneIdx = [Int]()
    var unOne = [Int: Int]()
    init() {
        
    }
    
    func add(_ num: Int) {
        nums.append(num)
        if num == 0 {
            zeros.append(nums.count-1)
        }else if num != 1 {
            unOneIdx.append(nums.count-1)
            unOne[nums.count-1] = num
        }
    }

    func getProduct(_ k: Int) -> Int {
        let sub = nums.count - k
        for item in zeros {
            if sub <= item {
                return 0
            }
        }
        var res = 1
        let startIdx = nums.count - k
        for item in unOneIdx {
            if startIdx <= item {
                res = res * unOne[item]!
            }
        }
        return res
    }
}

// 51有重合的，减1
// 1 2 4 4 4


// 1 2 3 4
class Event {
    func maxEvents(_ events: [[Int]]) -> Int {
        var events = events
        events.sort { (e1, e2) -> Bool in
            e1[1] <= e2[1]
        }
        var set = Set<Int>()
        for item in events {
            let s = item[0]
            let e = item[1]
            for i in s...e {
                if !set.contains(i) {
                    set.insert(i)
                    break
                }
            }
        }
        
        return set.count
    }
}

