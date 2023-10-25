import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.contains(2) ? Array(arr[arr.firstIndex(of: 2)!...arr.lastIndex(of: 2)!]) : [-1]
}
