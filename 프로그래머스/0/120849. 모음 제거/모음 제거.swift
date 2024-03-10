import Foundation

func solution(_ my_string: String) -> String {
    var result = ""
    for char in my_string {
        if char != "a" && char != "e" && char != "i" && char != "o" && char != "u" {
            result += String(char)
        }
    }
    return result
}