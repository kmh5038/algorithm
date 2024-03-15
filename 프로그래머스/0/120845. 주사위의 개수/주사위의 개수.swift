import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    var result:[Int] = []
    for i in box {
        result.append((i / n))
    }
    return result.reduce(1, *)
}