import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sortArray:[Int] = numbers.sorted(by: >)
    return sortArray[0] * sortArray[1]
}