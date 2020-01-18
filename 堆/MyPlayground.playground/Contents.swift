import UIKit

//https://leetcode-cn.com/problems/kth-largest-element-in-a-stream/

class KthLargest {

    var cache: [Int]
    var k: Int
    
    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        cache = nums.sorted(by: { $0 > $1 })
    }
    
    func add(_ val: Int) -> Int {
        // 把新元素插入到一个有序数组中，还保持数组有序。顺序是从大到小
        // 先找到新元素插入的位置insertIndex：先和数组的中间元素对比，如果小，那么继续在中间元素
        // 到最后的数组中的中间元素对比，直到找到插入的位置
        
        
        cache.insert(val, at: cache.startIndex.distance(to: cache.insertIndex({ val < $0 })))
        return cache[k - 1]
    }
}

extension RandomAccessCollection {
    
    func insertIndex(_ block: (Element) -> Bool) -> Index {
        var slice: SubSequence = self[...]
        while !slice.isEmpty {
            let middle = slice.index(slice.startIndex, offsetBy: slice.count / 2)
            print(middle)
            print(slice[middle])
            print("----")
            slice = block(slice[middle]) ? slice[index(after: middle)...] : slice[...index(before: middle)]
            
        }
        return slice.startIndex
        
    }
    
}
var nums = [10, 4, 3, 2, 1]

nums.insert(5, at: nums.startIndex.distance(to: nums.insertIndex({ 5 < $0 })))
print(nums)

//作者：eyrefree
//链接：https://leetcode-cn.com/problems/kth-largest-element-in-a-stream/solution/swift384-ms-by-eyrefree/
//来源：力扣（LeetCode）
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

// 超出时间限制
//class KthLargest {
//    var mutArray : [Int]
//    var k : Int
//    init(_ k: Int, _ nums: [Int]) {
//        self.k = k
//        mutArray = nums
//
//    }
//
//    func add(_ val: Int) -> Int {
//
//        mutArray.append(val)
//        let temp = mutArray.sorted()
//        if mutArray.count >= k - 1 && k >= 1 {
//
//            return temp[temp.count - k]
//        }else {
//            return 0
//        }
//
//    }
//}
