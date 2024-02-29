import Foundation

func solution(_ num_str:String) -> Int {
    var sum = num_str.compactMap { Int(String($0)) }.reduce(0, +)
    
    return sum
}