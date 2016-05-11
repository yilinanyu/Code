// t = O(N), s = O(N)
class Solution {
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int: Int]()
        var result = [Int]()

        for i in 0..<nums.count {
            let numberToFind: Int = target - nums[i]
            if let numberToFindIndex = hashMap[numberToFind] {
                result.append(numberToFindIndex)
                result.append(i)
                return result
            } else {
                hashMap[nums[i]] = i
            }
        }
        return result
        
    }
}