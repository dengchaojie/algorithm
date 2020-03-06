import UIKit

//swift怎么获取字符串某一位置的字符？
//判断当前位置的字符是不是空格？
//partial range upto
var str = "dc j"
//let res = str.reversed()
//print(str)
//print(res)

//var offset = 1
//
//
//while offset < str.count {
//    let endIdx = str.index(str.startIndex, offsetBy: offset)
//    let sub = str[endIdx...endIdx]
//    print(sub)
//    if sub == " " {
//        let pre = str.prefix(offset)
//        print(pre)
//    }else {
//
//    }
//    offset += 1
//
//}



class Solution {
    func reverseString(_ str: inout String) {
        var start = 0
        var offset = 1
        while offset <= str.count {
            if offset == str.count {
                switchChar(&str, start, offset - 1)
                start = offset + 1
            }else {
                let endIdx = str.index(str.startIndex, offsetBy: offset)
                if (str[endIdx...endIdx] == " ") {
                    switchChar(&str, start, offset - 1)
                    start = offset + 1
                }else {
                }
            }
            offset += 1

        }
    }
    
    func switchChar(_ str: inout String, _ start: Int, _ end: Int) -> Void {
        var start = start, end = end
        while start < end {
            let startIdx = str.index(str.startIndex, offsetBy: start)
            let changeIdx = str.index(str.startIndex, offsetBy: end)
            let temp = str[startIdx...startIdx]
        str.replaceSubrange(str.rangeOfComposedCharacterSequence(at: startIdx), with: str[changeIdx...changeIdx])
        str.replaceSubrange(str.rangeOfComposedCharacterSequence(at: changeIdx), with: temp)
            start += 1
            end -= 1
        }
    }
//    func reverseString(_ str: inout String) {
////        var preIdx = 0
//        var offset = 0
//
//        while offset != str.count {
//            if str == " " {
//
//            }
//
//        }
//
//
//    }
//
}

let obj = Solution()
//var str2 = "deng chao jie"
//obj.reverseString(&str2)
//print(str2)

var str3 = "be significantly later"
obj.reverseString(&str3)
print(str3)
