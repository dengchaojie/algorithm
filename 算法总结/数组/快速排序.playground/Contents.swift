



// 202002262132
class Solution {
    // 原地修改
    func sortQuickly2(_ arr: inout [Int], _ low: Int, _ high: Int) {
        if low >= high {
            return
        }
        var i = low
        var j = high
        let key = arr[i]
        
        while i < j {
            // 从右边开始
            while i < j && arr[j] >= key {
                j -= 1
            }
            //arr[j]小于key，放到i处
            arr[i] = arr[j]
            // 从左边开始，j处是空闲位置
            while i < j && arr[i] <= key {
                i += 1
            }
            //arr[i]大于key，放到j处
            arr[j] = arr[i]
            // 执行下次循环
        }
        // 直到i == j，将key放到i处。结束第一轮遍历
        arr[i] = key
        // 左边继续快排
        sortQuickly2(&arr, low, i-1)
        // 右边继续快排
        sortQuickly2(&arr, i+1, high)
    }
    // 我这种写法可以，但是浪费空间
    func sortQuickly(_ arr: [Int]) -> [Int] {
        return helper(arr)
    }
    // 9 6 12 1 4
    func helper(_ arr: [Int]) -> [Int] {
        if arr.count == 0 {
            return [Int]()
        }
        if arr.count == 1 {
            return arr
        }
        let temp = arr[0]
        var smalls = [Int]()
        var bigs = [Int]()
        var equals = [Int]()
        for i in 0..<arr.count {
            if arr[i] < temp {
                smalls.append(arr[i])
            }else if arr[i] == temp {
                equals.append(temp)
            }else {
                bigs.append(arr[i])
            }
        }
        let res =
        helper(smalls) + equals + helper(bigs)
        return res
    }
    

}

let obj = Solution()
//let arr = [ 9, 6, 12, 1, 4]
var arr = [2,3,5,7,1,4,6,15,5,2,7,9,10,15,9,17,12]
//let arr2 = [ 9, 16, 12, 41, 40]
//let arr3 = [ 93, 62, 12, 81, 54]

//obj.sortQuickly(arr)
//obj.sortQuickly(arr2)
//obj.sortQuickly(arr3)
obj.sortQuickly2(&arr, 0, arr.count-1)
print(arr)
