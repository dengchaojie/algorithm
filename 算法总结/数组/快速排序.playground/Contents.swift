
// 202002262132
class Solution {
    
    func sortQuickly(_ arr: [Int]) -> [Int] {
        return helper(arr)
    }
    // 9 6 12 1 4
    func helper(_ arr: [Int]) -> [Int] {
        if arr.count == 0 {
            return [Int]()
        }
        if arr.count == 1 {
            return arr
        }
        let temp = arr[0]
        var smalls = [Int]()
        var bigs = [Int]()
        var equals = [Int]()
        for i in 0..<arr.count {
            if arr[i] < temp {
                smalls.append(arr[i])
            }else if arr[i] == temp {
                equals.append(temp)
            }else {
                bigs.append(arr[i])
            }
        }
        let res =
        helper(smalls) + equals + helper(bigs)
        return res
    }
    
    
}

let obj = Solution()
//let arr = [ 9, 6, 12, 1, 4]
let arr = [2,3,5,7,1,4,6,15,5,2,7,9,10,15,9,17,12]
let arr2 = [ 9, 16, 12, 41, 40]
let arr3 = [ 93, 62, 12, 81, 54]

obj.sortQuickly(arr)
//obj.sortQuickly(arr2)
//obj.sortQuickly(arr3)

