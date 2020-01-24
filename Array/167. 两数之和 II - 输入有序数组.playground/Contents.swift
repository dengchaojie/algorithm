import UIKit

//https://leetcode-cn.com/problems/two-sum-ii-input-array-is-sorted/
// 01  双向指针

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        if numbers.count < 2 {
            return [Int]()
        }
        var left = 0, right = numbers.count - 1
        // left要小于right
        while left < right {
            if numbers[left] + numbers[right] < target {
                // 如果和小于目标，left加1
                left += 1
            }else if numbers[left] + numbers[right] > target {
                // 如果大于目标，right减1
                right -= 1
            }else {
                // 相等
                return [left + 1, right + 1]
            }
        }
        return [Int]()
        
    }
}

//class Solution {
//    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
//        if numbers.count < 2 {
//            fatalError()
//        }
//        var itemArr = [Int]()
//        var indexArr = [Int]()
//        for (index, item) in numbers.enumerated() {
//            if itemArr.contains(item) {
//
//            }else {
//                itemArr.append(item)
//                indexArr.append(index)
//            }
//        }
//        for i in 0..<itemArr.count {
//            let result = target - itemArr[i]
//            for j in 0..<itemArr.count {
//                if itemArr[itemArr.count - j - 1] == result {
//                    return [indexArr[i] + 1, indexArr[itemArr.count - j - 1] + 1]
//                }
//            }
//        }
//
//        fatalError()
//    }
//}
//class Solution {
//    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
//        if numbers.count < 2 {
//            fatalError()
//        }
//        let lessArray = numbers.filter { $0 <= target }
//        if lessArray.count < 2 {
//            fatalError()
//        }
//        for i in 0..<lessArray.count {
//            let result = target - lessArray[i]
//            if lessArray.contains(result) {
//                for j in 0..<lessArray.count {
//                    if lessArray[lessArray.count - j - 1] == result {
//                        return [i+1, lessArray.count - j]
//                    }
//                }
//            }
//        }
//        fatalError()
//    }
//}

let obj = Solution()
obj.twoSum([2,7,11,15], 18)
//obj.twoSum([-1, 0], -1)
