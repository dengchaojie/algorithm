import UIKit

//https://leetcode-cn.com/problems/design-twitter/
let arr = [1,2,3,4,5,6,7,8,9,10,11,12]
let arr2 = [1,2,3]
print(Array(arr[0..<10]))
print(Array(arr2[0...]))

class Twitter {
    var followers = [Int: [Int]]()
    var tweets = [[Int]]()
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Compose a new tweet. */
    func postTweet(_ userId: Int, _ tweetId: Int) {
        let newT = [userId, tweetId]
        tweets.insert(newT, at: 0)
        
    }
    
    /** Retrieve the 10 most recent tweet ids in the user's news feed. Each item in the news feed must be posted by users who the user followed or by the user herself. Tweets must be ordered from most recent to least recent. */
    func getNewsFeed(_ userId: Int) -> [Int] {
        if tweets.count == 0 {
            return [Int]()
        }
        
        var temp = [Int]()
        for item in tweets {
            if item[0] == userId {
                temp.append(item[1])
            }else if let followees = followers[userId],
                followees.contains(item[0]) {
                temp.append(item[1])
            }
        }
        if temp.count > 10 {
            return Array(temp[0..<10])
        }else {
            return Array(temp[0...])
        }

    }
    
    /** Follower follows a followee. If the operation is invalid, it should be a no-op. */
    func follow(_ followerId: Int, _ followeeId: Int) {
        if var temp = followers[followerId] {
            if !temp.contains(followeeId) {
                temp.insert(followeeId, at: 0)
                followers[followerId] = temp
            }
        }else {
            if followerId != followeeId {
                followers[followerId] = [followeeId]
            }
        }
    }
    
    /** Follower unfollows a followee. If the operation is invalid, it should be a no-op. */
    func unfollow(_ followerId: Int, _ followeeId: Int) {
        if var temp = followers[followerId] {
            if let index = temp.firstIndex(of: followeeId) {
                temp.remove(at: index)
                followers[followerId] = temp
            }
        }else {
            
        }
    }
}
