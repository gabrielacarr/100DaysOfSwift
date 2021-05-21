 /**========================================================================
  * ?                              TWO SUM
  *   Question Link: https://leetcode.com/problems/two-sum/
  *   
  *   Time Complexity: O(n), Space Complexity: O(n)
  * 
  *   fatalError Reference: https://stackoverflow.com/questions/53807647/twosum-swift-solution
  *========================================================================**/
  class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
  
        for (i, num) in nums.enumerated() {
            if let index = dict[target - num] {
                return [index, i]
            }
    
            dict[num] = i
        }
  
        fatalError("No valid outputs")
    }
}

