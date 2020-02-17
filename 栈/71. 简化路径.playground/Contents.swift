

//https://leetcode-cn.com/problems/simplify-path/
//let path = "/a/../../b/../c//.//"//"/a//b////c/d//././/.."
//let split = path.split(separator: Character("/"))

/*知识点：
 res.removeLast()//res不能为空
 res.popLast()//res能为空
 */

class Solution {
    func simplifyPath(_ path: String) -> String {
        var res = [String]()
        let components = path.split(separator: Character("/"))
        for item in components {
            switch item {
            case "": break
            case ".": break
            case "..":
                res.popLast()
            default:
                res.append(String(item))
            }
        }
        
        return "/" + res.joined(separator: "/")
    }
}


