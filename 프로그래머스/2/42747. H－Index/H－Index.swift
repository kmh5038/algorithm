import Foundation

func solution(_ citations:[Int]) -> Int {
    var citations = citations.sorted(by: >)
    var result = 0
    
    for h in 0..<citations.count {
        if citations[h] >= h+1 {
            result += 1
        } else {
            break
        }
    }
    return result
}
