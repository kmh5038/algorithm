import Foundation

func solution(_ names:[String]) -> [String] {
    var arr:[String] = []
    for i in 0..<names.count {
        if i % 5 == 0 {
            arr.append(names[i])
        }
    }
    return arr
}
