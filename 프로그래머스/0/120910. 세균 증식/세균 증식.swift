import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    var result1 = n

    for _ in 0..<t {
        result1 *= 2
    }

    return result1
}