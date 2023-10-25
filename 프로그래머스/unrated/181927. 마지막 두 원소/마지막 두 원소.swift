import Foundation


func solution(_ num_list:[Int]) -> [Int] {
    var arr: [Int] = num_list
    var last = num_list[num_list.count-1]
    var behindLast = num_list[num_list.count-2]
    arr.append(last > behindLast ? last - behindLast :last * 2)
    
    return arr
}