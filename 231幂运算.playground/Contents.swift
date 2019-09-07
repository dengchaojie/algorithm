


class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        
        if (n == 0) {
            return false
        }
        var shang = n
        while shang != 0  {
            if shang == 1 {
                return true
            }
            let yuShu = shang % 2
            if yuShu != 0 {
                return false
            }else
            {
                shang = shang / 2
            }
        }
        
        return true
    }
}

let obj = Solution()
print(obj.isPowerOfTwo(1))
