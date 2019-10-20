//https://leetcode-cn.com/problems/roman-to-integer/
//49
//chai kai, zuo jia fa
///LVIII

//let s = "djkoiw"
//let sArr = Array(s)
//print(String(sArr[0...3]))
//class Solution {
//    func romanToInt(_ s: String) -> Int {
//        let dict = ["I":1, "V":5, "X":10, "L":50,
//                    "C":100, "D":500, "M":1000
//            , "IV":4, "IX":9, "XL":40
//            , "XC":90, "CD":400, "CM":900
//            , "II":2, "III":3
//        ]
//        let len = s.count
//        var sum = 0
//        var index = 0
//        let sArr = Array(s)
//        while index <= len - 1 {
//            if index == len - 3 {
//                let sub3 = sArr[index...index+2]
//                if String(sub3) == "III" {
//                    sum += 3
//                    index += 3
//                    continue
//                }
//            }
//            if index < len - 1 {
//                let sub2 = sArr[index...index+1]
//                if let value2 = dict[String(sub2)] {
//                    sum += value2
//                    index += 2
//                    continue
//                }
//            }
//            let sub = sArr[index]
//            let cStr = String(sub)
//            if let value1 = dict[cStr] {
//                sum += value1
//                index += 1
//                continue
//            }
//        }
//        return sum
//    }
//}
//

//class Solution {
//    func romanToInt(_ s: String) -> Int {
//        let romanHash = ["I": 1, "V": 5, "X": 10, "L":50,
//                      "C":100, "D":500, "M":1000, "IV": 3,
//                      "IX": 8, "XL": 30, "XC": 80, "CD": 300, "CM": 800]
//        var output = 0
//        var flag = 0
//        for index in s.indices {
//            if flag != 0 {
//                let subStr = String(s[s.index(index, offsetBy: -1)..<s.index(index, offsetBy: 1)])
//                let char = String(s[index])
//                output += romanHash[subStr] ?? 0 != 0 ? romanHash[subStr]! : romanHash[char]!
//            }else {
//                let char = String(s[index])
//                output += romanHash[char]!
//                flag = 1
//            }
//
//        }
//        return output
//    }
//}
//
//
//let obj = Solution()
//print(obj.romanToInt("MCMXCIV"))
//print(obj.romanToInt("LVIII"))
//print(obj.romanToInt("IX"))
//print(obj.romanToInt("IV"))
//print(obj.romanToInt("III"))


//enum Planet: Int {
//    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
//    subscript(n: Int) -> Planet {
//        return Planet(rawValue: n)!
//    }
//}
//
//let p = Planet.mars
//print(p[5])
//
//
//
//
//class SomeClass {
//    subscript(index: Int) -> Int {
//        get {
//            return 1
//        }
//        set(newValue) {
//
//        }
////        return 1
//
//    }
//
//}
//
// let numbers = [16,58,510]
//numbers.map {_ in
//
//}

//let finalSquare = 25
//var square = 0
//gameLoop: while square != finalSquare
//{
//    switch square {
//    case finalSquare:
//        break gameLoop
//    case 10:
//        continue gameLoop
//    default:
//        square += 1
//    }
//}
//

//let eAcute: Character = "\u{E9}" // é
//let combinedEAcute: Character = "\u{65}\u{301}" // e followed by
//let enclosedEAcute: Character = "\u{E9}\u{20DD}"
//let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
// regionalIndicatorForUS is 🇺🇸
// enclosedEAcute is é⃝

//let greeting = "Hello, world!"
//let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
//let beginning = greeting[..<index]

//class Solution {
//    func romanToInt(_ s: String) -> Int {
//
//    }
//}
//var str = "kdkdkd"
//str.append("T##other: String##String")
//
//
//var str2 = """
//llwlwl
//ciicie
//"""
//print(str2)
//
//print(#"6 times 7 is \#(6 * 7)"#)
//
//let str3 = "ekeke"
//let utf = str3.utf8
//print(utf)


//let greeting = "Guten Tag!"
//greeting[greeting.index(before: greeting.endIndex)]
//for index in greeting.indices {
//    print("\(greeting[index])", terminator:" ")
//}
//
//var welcome = "hello"
//welcome.insert("!", at: welcome.endIndex)
//// welcome now equals "hello!"
//
//welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
//let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
//welcome.removeSubrange(range)




//
//let s = "djkoiw"
////print(String(s[s.index(s.startIndex, offsetBy: 1)..<s.index(s.startIndex, offsetBy: 3)]))
//for index in s.indices {
//    let str = s[index]
//    let a = 1
//    if a == 1 {
//
//    }
//    if str == "i" {
//        print("iii")
//    }
////    print(s[index])
//
////    print(String(s[index]))
//}
