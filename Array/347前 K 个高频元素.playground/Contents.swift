//https://leetcode-cn.com/problems/top-k-frequent-elements/
let dict = [1:3, 4:5]
//dict.mapValues { (value) -> Int in
//    if <#condition#> {
//        <#code#>
//    }
//}


class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var resArr = [Int]()
        var dict = [Int: Int]()
        for item in nums {
            if var i = dict[item] {
                i += 1
                dict[item] = i
            }else {
                dict[item] = 1
            }
        }
        let asen = dict.values.sorted()
        for i in 1...k {
            let item = asen[asen.count - i]
            for key in dict.keys {
                if dict[key] == item {
                    if resArr.contains(key) {
                        
                    }else {
                        resArr.append(key)
                    }
                }
            }
        }
        return resArr
        
    }
}
//[1,1,1,2,2,3], k = 2
let obj = Solution()
//print(obj.topKFrequent([1,1,1,2,2,3], 2))
//print(obj.topKFrequent([1], 1))
print(obj.topKFrequent([1,2], 2))
