import UIKit

class Solution {
    
    
    func insertItemInArr(_ newItem: Int, arr: [Int]) -> [Int] {
        var arr = arr
        var left = 0, right = arr.count - 1
        while left <= right {
            let middle = (right - left) / 2
            let index = left + middle + (right - left) % 2
            if arr[index] == newItem {
                left = index
            }else if arr[index] > newItem {
                right = right - middle
            }else {
                left = index
            }
        }
        arr.insert(newItem, at: left)

        return arr
    }
}

let obj = Solution()
obj.insertItemInArr(4, arr: [1,2,3])

