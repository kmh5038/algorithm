import Foundation

func solution(_ num_list: [Int], _ n: Int) -> [Int] {
   var result = num_list.suffix(from: n - 1)
    return Array(result)
}