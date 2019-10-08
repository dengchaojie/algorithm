
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

let p = Planet.mars
print(p[5])




class SomeClass {
    subscript(index: Int) -> Int {
        get {
            return 1
        }
        set(newValue) {
            
        }
//        return 1

    }

}

 let numbers = [16,58,510]
numbers.map {_ in
    
}

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

