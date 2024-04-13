import Foundation

func solution(_ n: Int) -> Int {
    var factorial = 1
    var i = 1

    while factorial * (i + 1) <= n {
        factorial *= (i + 1)
        i += 1
    }

    return i
}