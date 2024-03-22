import Foundation

func solution(_ myString:String) -> [String] {
    let substrings = myString.components(separatedBy: "x")
    let filteredSubstrings = substrings.filter { !$0.isEmpty }
    return filteredSubstrings.sorted()
}