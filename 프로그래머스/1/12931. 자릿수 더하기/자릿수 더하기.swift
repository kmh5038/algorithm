import Foundation

func solution(_ n:Int) -> Int {
    let digits = String(n)
    
    var sum = 0
    
    for digit in digits {
        
        sum += Int(String(digit)) ?? 0
    }
    
    return sum
}