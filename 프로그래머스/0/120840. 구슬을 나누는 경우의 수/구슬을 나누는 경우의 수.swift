import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
   if share > balls {
        return 0
    }

    var dp: [[Int]] = Array(repeating: [Int](repeating: 0, count: share + 1), count: balls + 1)

    for i in 0..<balls + 1 {
        for j in 0..<share + 1 {
            if j == 0 {
                dp[i][j] = 1
            } else if j <= i {
                dp[i][j] = dp[i - 1][j - 1] + dp[i - 1][j]
            }
        }
    }

    return dp[balls][share]
}