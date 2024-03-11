import Foundation

func solution(_ n:Int) -> Int {
    var num = Int(sqrt(Double(n)))
    
    return n == (num * num) ? 1 : 2
}