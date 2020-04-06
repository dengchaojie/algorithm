import UIKit

var str = "Hello, playground"

// 50
func minSubsequence(_ nums: [Int]) -> [Int] {

    var sum = nums.reduce(0) { (result, item) -> Int in
        result + item
    }
    var temp = nums.sorted()
    var res = [Int]()

    var lastSum = 0
    while !temp.isEmpty && sum >= lastSum {
        let last = temp.removeLast()
        res.append(last)
        lastSum += last
        sum -= last
    }
    
    return res
}

//minSubsequence([6])
