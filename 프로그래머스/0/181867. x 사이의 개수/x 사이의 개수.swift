import Foundation

func solution(_ myString:String) -> [Int] {
    var lengths = myString.components(separatedBy: "x").map { $0.count }
    
    return lengths
}