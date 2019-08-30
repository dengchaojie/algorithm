


class Solution {
    
    func repeatedNTimes(_ A: [Int]) -> Int {
        let last = A.last!
        var vote = 0
        var result = 0
        
        for i in 0..<A.count - 1 {
            if A[i] == last {
                return last
            } else if vote == 0 {
                vote = 1
                result = A[i]
            } else if result == A[i] {
                vote = vote + 1
            } else {
                vote = vote - 1
            }
        }
        
        return result
    }
}

/**
class Solution {
    func repeatedNTimes(_ A: [Int]) -> Int {
        var set:[Int] = []
        for item in A {
            if set.contains(item) {
                return item
            }else
            {
                set.append(item)
            }
        }
        return -1
    }
}

**/

/**
// 07
class Solution {
    func repeatedNTimes(_ A: [Int]) -> Int {
        let a = A.count / 2 - 1
        var dict = [Int:Int]()
        
        for item in A {
            if let value = dict[item] {
                if value == a  {
                    return item
                }
                let new = value + 1
                dict[item] = new
            }else
            {
                dict[item] = 1
            }
        }

        return -1
    }
}
 **/
