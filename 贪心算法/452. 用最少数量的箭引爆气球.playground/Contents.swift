import UIKit

// 遗留问题：双指针，需要有序数组的插入的位置
//let arr = [1,2,3,4]
//let slice = arr[...]
//print(slice[slice.index(2 ,offsetBy: -1)...])

//https://leetcode-cn.com/problems/minimum-number-of-arrows-to-burst-balloons/
//48
// 二维数组的排序
class Solution {
    var endArr = [Int]()

//    func findMinArrowShots(_ points: [[Int]]) -> Int {
//        // 按照结束点升序
//
//        var resultArr = [[Int]]()
//        for item in points {
//            let index = sortArr(item[1])
//            resultArr.insert(item, at: index)
//        }
//    }
    
    // 将一个元素，插入有序数组，使数组还保持有序。
    // 先不要套用了
    func sortArr(_ val: Int) -> Int {
        if endArr.count == 0 {
            endArr.append(val)
            return 0
        }
        var left = 0, right = endArr.count - 1
        
        while left < right {
            let middle = (right - left) / 2
            let index = left + middle + 1
            if val < endArr[index] {
                right = right - middle
            }else if val > endArr[index] {
                left = left + middle
            }else {
                
            }
        }
        return left
    }
}

//10 16
//2  8
//1  6
//7  12
let obj = Solution()
obj.endArr = [1,5,6]
obj.sortArr(7)



//if endArr.count == 0 {
//    endArr.append(val)
//    return 0
//}
//var slice = endArr[...]
//
//while !slice.isEmpty {
//
//    let middle = slice.count / 2
//    if val == slice[middle] {
//        let index = slice.index(before: middle)
//        if index < slice.startIndex {
//            return slice.startIndex
//        }else {
//            return index
//        }
//
//    } else if val < slice[middle] {
//        if slice.count == 1 {
//            let index = slice.index(before: middle)
//            if index < slice.startIndex {
//                return slice.startIndex
//            }else {
//                return index
//            }
//        }
//        slice = slice[0...slice.index(before: middle)]
//
//    } else {
//        print("7")
//        if slice.count == 1 {
//            let index = slice.index(after: middle)
//            print("3")
//            if index >= slice.endIndex - 1 {
//                print("ekekek")
//                return slice.endIndex - 1
//            }else {
//                print("4")
//                return index
//            }
//        }
//        print("2")
//
//        slice = slice[slice.index(after: middle)...]
//    }
//}
//return (endArr.count - 1)
