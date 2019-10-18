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




//n和4的关系？
//1 ying 1
//2 ying 2
//3 ying 3
//4 shu     1  1
//5 ying 1  2  1
//6 ying 2  0  2
//7 ying 3  1  2
//8         2  2
//9 ying 1
//10 ying 2
//11 ying 3
//12
//

