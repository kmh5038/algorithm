import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let left = String(a)
    let right = String(b)
    
    if let result1 = Int(left + right), let result2 = Int(right + left) {
        return max(result1, result2)
    } else {
        return 0
    }
}