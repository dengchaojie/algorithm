struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) -> Void {
        x += deltaX
        y += deltaY
    }
    
    static var highestUnlockedLevel = 1
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    
    
}

var p = Point(x: 4.0, y: 5.0)
p.moveBy(x: 2.0, y: 3.0)
print(p.x)
print(p.y)

enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off

        }
    }
}
var state = TriStateSwitch.low
state.next()

state.next()



class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}
let kdkd = SomeClass.init()
var pro = SomeClass.computedTypeProperty
pro = 93939
print(pro)

struct Resolution {
    var width = 0.0
    var height = 0.0
    
}

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd



class VideoMode {
    var resolution = Resolution(width: 12, height: 838)
    var name: String?
    var totalStep: Int = 0 {
        willSet {
            print("\(newValue)")
        }
        didSet {
            if totalStep > oldValue {
                print("\(totalStep - oldValue)")
            }else
            {
                print("ieiem")
            }
        }
    }
    
    
}
let dkdk = VideoMode()
dkdk.totalStep = 100
dkdk.totalStep = 2000



class Room {
    let name: String
    init(_ name: String) {
        self.name = name
        
    }
    
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    var currentRoom: Room?
    
}

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

let autoClosure = { customersInLine.remove(at: 0) }
print(customersInLine.count)

print("\(autoClosure())")
print(customersInLine.count)


var myClosure: (() -> Void) = {
    print("dkkdkd")
}
myClosure()

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void)
{
    completionHandlers.append(completionHandler)
}


func someFunctionWithClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    
    var x = 10
    func dosomething() -> Void {
        someFunctionWithEscapingClosure {
             self.x = 100
        }
        someFunctionWithClosure {
            x = 200
        }
    }
    
}

let cl = SomeClass.init()
cl.dosomething()
print(cl.x)

completionHandlers.first?()
print(cl.x)



//class Solution {
//    func makeIncrementer(forIncrement amount: Int) -> () -> Int
//    {
//        var runningTotal = 0
//        func incrementer() -> Int
//        {
//            runningTotal += amount
//            return runningTotal
//        }
//        return incrementer
//    }
//}
//
//let cl = Solution.init()
//let fun = cl.makeIncrementer(forIncrement: 12)
//fun()
//fun()
//fun()

//print(cl.makeIncrementer(forIncrement: 3))
//print(cl.makeIncrementer(forIncrement: 6))

//{ (parameters) -> (return type) in
//    statements
//}

//let names = ["Chris","Alex","Ewa","Barry","Daniella"]
//func backward(_ s1: String, _ s2: String) -> Bool {
//    return s1 > s2
//}
//var reversedNames = names.sorted(by: backward)
//names.sorted()


var para = ["Chris","Alex","Ewa","Barry","Daniella"]
para.sort()
para.sort(by: {(s1: String, s2: String) -> Bool in return s1 > s2})
para.sort(by: {s1, s2 in return s1 > s2})
para.sort(by: {s1, s2 in s1 > s2})
para.sort(by: {$0 > $1})// 简写的实际参数名
para.sort(by: >)// 运算符函数
para.sort() { $0 > $1}// 尾随闭包
para.sort { $0 > $1}
print(para)

// 先从头开始，在从中间开始
//class Solution {
//    func longestCommonPrefix(_ strs: [String]) -> String {
//        if strs.count == 0 {
//            return ""
//        }
//        if strs.count == 1 {
//            return strs[0]
//        }
//        guard let firstStr = strs.first else {
//            return String(longestPrefix)
//        }
//
//        let firstStrChars = Array(firstStr)
//
//        let strsChars = strs.map { Array($0) }
//
//
//    }
//}
