import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var result = 0
    
    for i in included.indices {
        if included[i] {
            result += a + ( d * i )
        }
    }
    return result
}

