import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result = num_list.sorted()
    return Array(result.prefix(5))
}