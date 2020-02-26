

/*
 　　问题：给你n个无序的int整型数组arr，并且这些整数的取值范围都在0-20之间，要你在 O(n) 的时间复杂度中把这 n 个数按照从小到大的顺序打印出来。
 */



class Solution {
    func sortArray(_ arr: [Int]) {
        
        var result = Array(repeating: -1, count: 21)
        for item in arr {
            if result[item] != -1 {
                result[item] = result[item] + 1
            }else {
                result[item] = item
            }
        }
        
        for i in 0..<result.count {
            if result[i] != -1 {
                if result[i] != i {
                    for _ in i...result[i] {
                        print(i)
                    }
                }else {
                    print(i)

                }
            }
            
        }
        
        
    }
    
    //移动零
    func moveZeroes2(_ nums: inout [Int]) {
        var idx = 0
        var i = 0
        while i < nums.count {
            if nums[i] != 0 {
                nums[idx] = nums[i]
                idx += 1
            }
            i += 1
        }
        for j in idx..<nums.count {
            nums[j] = 0
        }
    }
    
    func moveZeroes(_ nums: inout [Int]) {
        var i = 0
        var idx = 0
        while i < nums.count {
            if nums[i] != 0 {
                let temp = nums[i]
                nums.remove(at: i)
                nums.insert(temp, at: idx)
                idx += 1
            }else {
            
            }
            i += 1
        }
        
        
    }
}

let obj = Solution()
//obj.sortArray([3,9,1,11,7,19,3,8,7])
var zeroes = [0,0,1]//[0,1,0,3,12]//
obj.moveZeroes2(&zeroes)
print(zeroes)
