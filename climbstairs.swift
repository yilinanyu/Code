class Solution {
    func climbStairs(n: Int) -> Int {
        if n == 0 || n == 1 {
            return 1
        }
        var stepOne = 1
        var stepTwo = 1
        var result = 0
        for _ in 2...n {
            result = stepOne + stepTwo
            stepTwo = stepOne
            stepOne = result
        }
        return result 
        
    }
}