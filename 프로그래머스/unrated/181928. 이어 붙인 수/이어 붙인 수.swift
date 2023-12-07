
import Foundation

func solution(_ num_list:[Int]) -> Int {
    var odd = ""
    var even = ""
    for i in num_list {
        if i % 2 == 0 {
            even.append("\(i)")
        } else {
            odd.append("\(i)")
        }
    }
    
    let oddSum = Int(odd) ?? 0
    let evenSum = Int(even) ?? 0
    
    return oddSum + evenSum
}