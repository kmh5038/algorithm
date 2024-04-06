import Foundation

func solution(_ n:Int64) -> Int64 {
     let sqrtN = Int(Double(n).squareRoot())

    if sqrtN * sqrtN == n {
        return Int64(sqrtN + 1) * Int64(sqrtN + 1)
    } else {
        return -1
    }
}