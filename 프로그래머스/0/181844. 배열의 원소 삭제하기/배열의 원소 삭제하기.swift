import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    var result = arr.filter { !delete_list.contains($0) }
    
    return result
}