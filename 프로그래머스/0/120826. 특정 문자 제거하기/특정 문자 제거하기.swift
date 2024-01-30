import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    let result = my_string.replacingOccurrences(of: letter, with: "")
    return result
}