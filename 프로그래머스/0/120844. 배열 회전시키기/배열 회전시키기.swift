import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var result = numbers
    if direction == "right" {
        result.insert(result[result.count-1], at:0)
        result.removeLast()
    } else {
        result.insert(result[0], at:result.count)
        result.removeFirst()
    }
    return result
}