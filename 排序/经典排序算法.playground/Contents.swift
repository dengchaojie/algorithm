import UIKit

var str = "Hello, playground"

// 选择排序
func xuanZe(arr: inout [Int]) {
    

}



//折半查找(二分查找)

// 字符串反转
func reverseStr(_ str: String) -> String {
    let res = str.reversed()
    return String(res)
}

func reverseStr2(_ str: String) -> String {
    var temp = ""
    for item in str {
        temp.insert(item, at: temp.startIndex)
    }
    
    return temp
}

//func reverseStr3(_ str: inout String) {
//
//
//}

//reverseStr("hello,world")
//reverseStr2("hello,world")

func mergeArrays(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    if arr1.count == 0 {
        return arr2
    }
    if arr2.count == 0 {
        return arr1
    }
    var arr1 = arr1, arr2 = arr2
    var res = [Int]()
    while !arr1.isEmpty && !arr2.isEmpty {
        if arr1.first! < arr2.first! {
            res.append(arr1.removeFirst())
        }else if arr1.first! == arr2.first! {
            res.append(arr1.removeFirst())
            res.append(arr2.removeFirst())
        }else {
            res.append(arr2.removeFirst())

        }
    }
    if arr1.isEmpty {
        res.append(contentsOf: arr2)
    }
    if arr2.isEmpty {
        res.append(contentsOf: arr1)
    }
    return res
}

//mergeArrays([1,4,6,7,9], [2,3,5,6,8,9,10,11,12])

func onceChar(_ str: String) -> Character {
    var times = [Character: Int]()
    for item in str {
        if var count = times[item] {
            count += 1
            times[item] = count
        }else {
            times[item] = 1
        }
    }
    for item in str {
        if let count = times[item], count == 1 {
            return item
        }
    }
    return Character("")
}

//onceChar("aaccddeeffg")
func zhongWeiShu(_ arr: [Int]) -> Int {
    let temp = arr.sorted()
    let n = temp.count
    if temp.count % 2 == 0 {
        return (temp[n / 2] + temp[n / 2 + 1])/2

    }else {
        return temp[(n+1)/2]
    }
    
    
}
