import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var result = 0
    
    for i in i...j {
        for j in String(i) {
            if String(j) == String(k) {
                result += 1
            }
        }
    }
    return result
}