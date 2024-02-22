import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let sortedList = num_list.sorted()
    
    let smallestFive = sortedList.prefix(5)

    let result = sortedList.suffix(sortedList.count - 5).sorted()
    
    return result
}