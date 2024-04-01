import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    var numList = num_list
    
    for _ in 1...(numList.count / n) {
        result.append(Array(numList.prefix(n)))
        for _ in 1...n {
            numList.removeFirst()
    }
}
    return result
}