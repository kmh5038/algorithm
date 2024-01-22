import Foundation

func solution(_ message: String) -> Int {
    var result = 0
    for i in message {
        result += 2
        print(i)
    }
    return result
}
