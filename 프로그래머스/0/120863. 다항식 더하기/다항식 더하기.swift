import Foundation

func solution(_ polynomial:String) -> String {
    var first:Int = 0
    var second:Int = 0
    polynomial.components(separatedBy: " + ").map {
        if $0.contains("x") {
            first += (Int(String($0.replacingOccurrences(of: "x", with: ""))) ?? 1)
        } else {
            second += (Int($0) ?? 0)
        }
    }
    var result:String = ""
    if first != 0 {
        if first == 1 {
            result += "x"
        } else {
            result += "\(first)x"
        }
        if second != 0 {
            result += " + \(second)"
        }
    } else {
        if second != 0 {
            result += "\(second)"
        }
    }
    
    return result
}