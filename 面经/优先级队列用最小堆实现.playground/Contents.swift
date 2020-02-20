

//优先级队列用最小堆实现

/*
 设计
        1
    2       5
 3    4   6   7
 [1,2,5,3,4,6,7]
 */
class Solution {
//    var minHeap: [Int]
//
//    init(minHeap:[Int]) {
//        self.minHeap = minHeap
//    }
//
//    func insertValue(_ value: Int) {
//
//    }
//
//    func excuteValue(_ value: Int) {
//
//    }
//
    
    func isPalindrome(_ x: Int) -> Bool {
        let str = String(x)
        
        if str.count == 1 {
            return true
        }
        
        let chars = Array(str)
        var left = 0, right = str.count-1
        while left < right {
            if chars[left] == chars[right] {
                left += 1
                right -= 1
            }else {
                return false
            }
        }
        return true
    }
    
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        return 1
    }
    
    func numSquares(_ n: Int) -> Int {
        //
        var resultArr = Array(repeating: 0, count: n+1)
        resultArr[0] = 1
        for i in 1...n {
            
        }
        
        
    }
    
}

let obj = Solution()
obj.isPalindrome(101)

