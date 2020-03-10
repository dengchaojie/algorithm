import UIKit
// 01
class Sulotion {
    //
    func someFunc(_ view: UIView) -> [UIButton] {
        var res = [UIButton]()
//        _dfs(view, &res)
        
        return res
    }
    
    func _dfs(_ view: UIView, _ res: inout [UIButton]) -> Void {
        if !view.subviews.isEmpty {
            for item in view.subviews {
                _dfs(item, &res)
            }
        }else {
            
        }
        if view.isKind(of: UIButton.classForCoder()) {
            res.append(view as! UIButton)
            print(view.accessibilityLabel)
        }else {
            
        }
        
    }
    // 19
    func _bfs(_ view: UIView, _ res: inout [UIButton]) -> Void {
        
        if view.subviews.isEmpty {
            if view.isKind(of: UIButton.classForCoder()) {
                res.append(view as! UIButton)
            }
        }else {
            for item in view.subviews {
                if item.isKind(of: UIButton.classForCoder()) {
                    res.append(item as! UIButton)
                }
                if item.subviews.isEmpty {
                    
                }else {
                    
                }
            }
        }
        
    }
}

let view = UIView()
let view2 = UIView()
let btn1 = UIButton()
let btn2 = UIButton()
let view3 = UIView()
let btn3 = UIButton()
let view4 = UIView()
let btn4 = UIButton()
view.addSubview(view2)
view.addSubview(btn1)

view2.addSubview(btn2)
btn2.addSubview(btn3)

btn1.addSubview(btn4)

btn4.addSubview(view4)
btn4.addSubview(view3)



btn1.accessibilityLabel = "btn1"
btn2.accessibilityLabel = "btn2"
btn3.accessibilityLabel = "btn3"
btn4.accessibilityLabel = "btn4"

let obj = Sulotion()
let res = obj.someFunc(view)
for item in res {
    print(item.accessibilityLabel)
}



