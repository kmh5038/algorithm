import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result:[[Int]] = []
    for i in 0..<n {
        var intArr:[Int] = []
        for j in 0..<n {
            i == j ? intArr.append(1):intArr.append(0)
        }
        result.append(intArr)
    }
    return result
}