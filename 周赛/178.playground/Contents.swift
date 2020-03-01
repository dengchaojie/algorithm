//5344 5345

import UIKit
//
//var dict = ["a":1, "b":12,"c":9]
//let res = dict.sorted { (item1, item2) -> Bool in
//    if item1.value >= item2.value {
//        return true
//    }else {
//        return false
//    }
//}
//print(res)



class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let sort = nums.sorted()
        var res = [Int]()
        for item in nums {
            res.append(sort.firstIndex(of: item)!)
        }
        
        return res
        
    }
    
    func rankTeams(_ votes: [String]) -> String {
        if votes.count == 1 {
            return votes[0]
        }
        let set = Set(votes)
        if set.count == 1 {
            return votes[0]
        }
        var res = ""
        // 转化成整数
        let item0 = Array(votes[0])
        let count = item0.count
        var charDict = [Character : [Int]]()
        
        for i in 0..<count {
            var arr = Array(repeating: 0, count: count);
            arr[i] = 1
            charDict[item0[i]] = arr
        }
        for i in 1..<votes.count {
            let temp = Array(votes[i])
            for j in 0..<count {
                var arr = charDict[temp[j]]!
                arr[j] = arr[j] + 1
                charDict[temp[j]] = arr
            }
        }

        let sort = charDict.sorted { (item1, item2) -> Bool in
            let compare = compareArray(item1.value, item2.value)
            if compare == 1 {
                return true
            }else if compare == 0 {
                if item1.key < item2.key {
                    return true
                }else {
                    return false
                }
            }else {
                return false
            }
        }
        for item in sort {
            res += "\(item.key)"
        }
        
        
        return res
    }
    
    func compareArray(_ a: [Int], _ b: [Int]) -> Int {
        
        for i in 0..<a.count {
            if a[i] > b[i] {
                return 1
            }else if a[i] == b[i] {
                
            }else {
                return -1
            }
        }
        return 0
    }
    
    func myPow(_ x: Int, _ y: Int) -> Int {
        if y == 0 {
             return 1
        }
        var res = 1
        for _ in 0..<y {
            res = res * x
        }
        return res
    }
}


let obj = Solution()
obj.rankTeams(["ABC","ACB","ABC","ACB","ACB"])//
obj.rankTeams(["WXYZ","XYZW"])
obj.rankTeams(["BCA","CAB","CBA","ABC","ACB","BAC"])
obj.rankTeams(["M","M","M","M"])
obj.rankTeams(["ZMNAGUEDSJYLBOPHRQICWFXTVK"])
obj.myPow(2, 3)
