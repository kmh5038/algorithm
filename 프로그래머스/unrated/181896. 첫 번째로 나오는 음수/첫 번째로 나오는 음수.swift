import Foundation

func solution(_ numList: [Int]) -> Int {
    for (index, number) in numList.enumerated() {
        if number < 0 {
            return index
        }
    }
    return -1
}
