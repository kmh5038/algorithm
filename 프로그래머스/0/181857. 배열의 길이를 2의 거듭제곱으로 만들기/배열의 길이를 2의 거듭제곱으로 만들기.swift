import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    let n = arr.count
    var k = 0
    
    while Int(pow(2.0, Double(k))) < n {
        k += 1
    }
    
    let targetLength = Int(pow(2.0, Double(k)))
    for _ in 0..<(targetLength - n) {
        result.append(0)
    }
    
    return result
}