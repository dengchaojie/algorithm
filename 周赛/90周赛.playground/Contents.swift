

class Solution {
    func buddyStrings(_ A: String, _ B: String) -> Bool {
        
        if A.count != B.count {
            return false
        }
        if A == "" && A == B {
            return false
        }
        
        var aa = Array(A), bb = Array(B)
        var isChanged = false
        while !aa.isEmpty {
            let af = aa.first!
            let bf = bb.first!
            if af == bf {
                aa.removeFirst()
                bb.removeFirst()
            }else {
                if isChanged {
                    return false
                }
                if let index = aa.firstIndex(of: bf) {
                    
                    aa[0] = bf
                    aa[index] = af
                    isChanged = true
                    aa.removeFirst()
                    bb.removeFirst()
                }else {
                    return false
                }
            }
        }
        if A == B {
            var dict = [Character: Int]()
            for item in A {
                if var cou = dict[item] {
                    cou += 1
                    dict[item] = cou
                }else {
                    dict[item] = 1
                }
            }
            var isAllOne = true
            for (_, value) in dict {
                if value != 1 {
                    isAllOne = false
                }else {
                    
                }
            }
            if isAllOne {
                return false
            }
        }
        return true
    }
    
    // 栈。如果是左括号，入栈深度是0，将深度加1，将新的深度的得分设置为0。如果是右括号，出栈当前深度的得分和上一个深度的得分，当前深度的得分乘以2加上上一个深度的得分，在入栈，当右括号左边是左括号时，得分是1。
    func scoreOfParentheses(_ S: String) -> Int {
        var stack = [Int]()
        stack.append(0)
        for item in S {
            if item == "(" {
                stack.append(0)
            }else {
                let curScore = stack.removeLast()
                let preScore = stack.removeLast()
                stack.append(preScore + max(2*curScore, 1))
            }
        }
        return stack.removeLast()
    }
    // 统计核心的数目。最近的括号()，所在的深度为d，那么累加2的d次方
    // 每发现一对()，二进制就向左便宜
    func scoreOfParentheses2(_ S: String) -> Int {
        var ans = 0, bal = 0
        let ss = Array(S)
        for i in 0..<S.count {
            if ss[i] == "(" {
                bal += 1
            }else {
                bal -= 1
                if ss[i-1] == "("{
                    // 第一次累加2，第二次累加4
                    ans += 1 << bal
                }
            }
        }
        return ans
    }
}


let obj = Solution()
//obj.buddyStrings("ab", "ba")
//obj.buddyStrings("aa", "aa")
//obj.buddyStrings("ab", "ab")
//obj.buddyStrings("aaaaaaabc", "aaaaaaacb")
//
//obj.buddyStrings("abcd", "badc")
//
//obj.buddyStrings("abab", "abab")

