import Foundation

func solution(_ n:Int) -> Int {
    for i in 1...1000 {
        if n == (i * i) {
            return 1
        } 
    }
    return 2
}