import UIKit


// 40   32458
var str = "Hello, playground"

class KthLargest {
    var nums: [Int]
    var k: Int
    init(_ k: Int, _ nums: [Int]) {
        self.nums = nums
        self.nums.sort()
        self.k = k
    }
    
    func add(_ val: Int) -> Int {
        if self.nums.count-k < 0 {
            _helper(val, self.nums.count-k+1)
            return self.nums[self.nums.count-k]
        }else {
            if val < self.nums[self.nums.count-k]  {
                self.nums.insert(val, at: 0)
            }else if val == self.nums[self.nums.count-k] {
                self.nums.insert(val, at: self.nums.count-k)
            }else {
                _helper(val, self.nums.count-k+1)
            }

            return self.nums[self.nums.count-k]
        }
        
    }
    
    func _helper(_ val: Int, _ start: Int) {
        var left = start, right = self.nums.count - 1
        while left <= right {
            let middle = left + (right - left) / 2
            if self.nums[middle] == val {
                self.nums.insert(val, at: middle)
                return
            }else if self.nums[middle] > val {
                right = middle - 1
            }else {
                left = middle + 1
            }
        }
        self.nums.insert(val, at: left)

    }
    
}

//let obj = KthLargest(3,[4,5,8,2])
//obj.add(3)
//obj.add(5)
//obj.add(10)
//obj.add(9)
//obj.add(4)


//let obj = KthLargest(1,[])
//obj.add(-3)
//obj.add(-2)
//obj.add(-4)
//obj.add(0)
//obj.add(4)

let obj = KthLargest(2,[0])
obj.add(-1)
obj.add(1)
obj.add(-2)
obj.add(-4)
obj.add(3)
