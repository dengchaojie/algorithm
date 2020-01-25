import UIKit

//https://leetcode-cn.com/problems/paint-fence/
// 动态规划
// 如果前2个颜色相同，那么当前有k-1选择
// 如果前2个颜色不同，那么当前有k选择

class Solution {
    func numWays(_ n: Int, _ k: Int) -> Int {
        if n == 0 || k == 0 {
            return 0
        }
        if n == 1 {
            return k
        }
        //前2个相同，有这么多可能：k
        var lastSame = k
        //前2个不同，这这么多可能：k*(k-1)
        var lastDiff = k * (k - 1)
        for _ in 2..<n {
            //
            (lastSame, lastDiff) = (lastDiff, (lastDiff + lastSame) * (k - 1))
        }
        return lastDiff + lastSame
        
    }
}


//如果颜色大于两种为n，那么任意一个栏杆都可以着n种颜色.
//    证明如下
//    第一步，前两个栏杆肯定是所有的颜色组合都可以。
//    第二步，如果第二，三可以有所有的颜色组合，那么就说明，第n个也是跟第n-1有所有的颜色组合。
//    这个举个例子就能想明白，就不说了。
//有了这一点，我们再去想就很容易了。
//
//动态规划的三板斧。
//
//第一板斧——找思路，看如何自底部向上。
//
//    之所以加这一步，是因为有的题目抽象的比较厉害。需要加一些特殊处理才行
//    这个就没啥好说的，挨个栏杆遍历
//第二板斧——确认公式
//
//    分成两块
//        如果当前栏杆颜色跟前一个栏杆颜色相同，那么可能组合 F(N- 2) * (K - 1)
//        如果当前栏杆跟前一个颜色不同，那么可能组合 F(N - 1) * (k - 1)
//    具体解释下第二个假设的分析
//        既然所有的栏杆都可以着色n种 如果，当前栏杆和前一个栏杆颜色不同。 那么前一个栏杆每一个路线，
//        都可以跟后面的栏杆跟这个路线最后一个颜色不同的k-1个颜色组合方案。 所以就是 F(N - 1) * (K - 1)
//    第一个假设的分析同上
//
//第三板斧——确认需要存储的上1/N步信息是否找对了
//
//    这个就没啥特殊的，但之所以加这一步。
//    因为两点
//    第一，这一步确认了，代码也就差不多确认了
//    第二，通过这一步反向来确认第二步是否真的完美了，double check下。
//
//作者：wang-yan-19
//链接：https://leetcode-cn.com/problems/paint-fence/solution/dong-tai-gui-hua-si-lu-fen-xi-c-by-wang-yan-19-3/
//来源：力扣（LeetCode）
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
