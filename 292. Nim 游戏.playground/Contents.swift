import UIKit

//https://leetcode-cn.com/problems/nim-game/
/// shi fou bi ying? gui lu:
class Solution {
    func canWinNim(_ n: Int) -> Bool {
        var isWin = false
        if n%4 != 0 {
            isWin = true
        }
        return isWin
        
    }
}
