import UIKit

// 202002262231 ouye
class Solution {
    
//    [1,4,9] 10
    func insertItemInArr(_ newItem: Int, arr: [Int]) -> [Int] {
        var arr = arr
        var left = 0, right = arr.count - 1
        while left <= right {
            let middle = left + (right - left) / 2
            if newItem == arr[middle] {
                arr.insert(newItem, at: middle)
                return arr
            }else if newItem < arr[middle] {
                right = middle - 1
            }else {
                left = middle + 1
            }
        }
        arr.insert(newItem, at: left)

        return arr
    }
    
    func insertItem(_ arr: [Int], _ item: Int) -> [Int] {
        var res = arr
        for i in 0..<arr.count {
            if item <= arr[i]  {
                res.insert(item, at: i)
                return res
            }
            if i == arr.count - 1 {
                res.insert(item, at: arr.count)
            }
        }
        return res
    }
}

let obj = Solution()
obj.insertItemInArr(1, arr: [2,4,7,9])

//let arr4 = [1,4,9]
//obj.insertItem(arr4, 10)
