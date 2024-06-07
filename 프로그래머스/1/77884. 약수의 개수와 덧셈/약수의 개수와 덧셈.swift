import Foundation

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0

    for number in left...right{
        if floor(sqrt(Double(number))) == sqrt(Double(number)) {
            answer -= number
        } else {
            answer += number
        }
    }
    return answer
}