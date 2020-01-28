import UIKit

//https://leetcode-cn.com/problems/meeting-rooms-ii/
// 20
// 思路是开始时间排序，结束时间排序，当出现开始时间大于等于结束时间的，
// 这2个时间段没有重叠。否则需要一个会议室解决冲突
class Solution {
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        let startTimes = intervals.map { (item) -> Int in
            return item[0]
        }.sorted()
        let endTimes = intervals.map { (item) -> Int in
            return item[1]
        }.sorted()
        var i = 0, j = 0, result = 0
        while i < intervals.count && j < intervals.count {
            if startTimes[i] < endTimes[j] {
                result += 1
            }else {
                // 开始时间大于等于结束时间
                j += 1
            }
            i += 1
        }
        return result
        
    }
}

//class Solution {
//    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
//        var resArr = [Int]()
//        var startTime = [Int]()
//        var endTime = [Int]()
//        for item in intervals {
//            resArr.append(contentsOf: item)
//            startTime.append(item[0])
//            endTime.append(item[1])
//        }
//        resArr.sort()
//
//        var result = intervals.count
//        for i in 0..<resArr.count {
//            if i < resArr.count - 1 {
//                if resArr[i] == startTime[]  {
//
//                }
//            }
//
//        }
//        return result
//    }
//}

//  1 2 3    6 7 8
//1 6 ; 2 7 ; 3 8

//
//  1 5 6    6 7 8
//
