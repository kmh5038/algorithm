import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result:[String] = []
    for q in quiz {
        var list = q.components(separatedBy: " ")
        if list[1] == "-" {
            if Int(list[0])! - Int(list[2])! == Int(list[4])! {
                result.append("O")
            } else {
                result.append("X")
            }
        } else {
            if Int(list[0])! + Int(list[2])! == Int(list[4])! {
                result.append("O")
            } else {
                result.append("X")
            }
        }
    }
    return result
}