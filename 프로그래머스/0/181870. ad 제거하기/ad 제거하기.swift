import Foundation

func solution(_ strArr:[String]) -> [String] {
    var result = strArr.filter { !$0.contains("ad") }
    return result
}