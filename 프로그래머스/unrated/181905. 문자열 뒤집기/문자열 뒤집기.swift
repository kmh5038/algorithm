import Foundation

func solution(_ my_string: String, _ s: Int, _ e: Int) -> String {
    guard s >= 0 && e < my_string.count && s <= e else {
        return "Invalid indices"
    }
    
    var reversedSubstring = ""
    let startIndex = my_string.index(my_string.startIndex, offsetBy: s)
    let endIndex = my_string.index(my_string.startIndex, offsetBy: e)
    let substring = my_string[startIndex...endIndex]
    
    for char in substring.reversed() {
        reversedSubstring += String(char)
    }
    
    let prefix = my_string.prefix(s)
    let suffix = my_string.suffix(from: my_string.index(my_string.startIndex, offsetBy: e + 1))
    
    return "\(prefix)\(reversedSubstring)\(suffix)"
}
