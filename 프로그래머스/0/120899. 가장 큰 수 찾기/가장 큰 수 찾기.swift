import Foundation

func solution(_ array:[Int]) -> [Int] {
    guard let maxNumber = array.max(), let index = array.firstIndex(of: maxNumber) else {
        return []
    }

    return [maxNumber, index]
}