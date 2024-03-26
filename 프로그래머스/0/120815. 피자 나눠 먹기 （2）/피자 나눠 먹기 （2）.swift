import Foundation

func solution(_ n:Int) -> Int {
    let div: [Int] = [6,3,2,1].filter { n % $0 == 0}
    return n / div[0]
}