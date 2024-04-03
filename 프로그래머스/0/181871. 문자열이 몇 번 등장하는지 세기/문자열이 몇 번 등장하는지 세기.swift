import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var string = myString
    var result = 0
    for _ in 1...(myString.count) {
        if string.prefix(pat.count) == pat {
            result += 1
        }
        string.removeFirst()
    }
    return result
}