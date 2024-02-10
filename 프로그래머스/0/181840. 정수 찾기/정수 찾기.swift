import Foundation

func solution(_ num_list:[Int], _ n:Int) -> Int {
    var result = 0
    for i in num_list {
        if i == n {
            result = 1
        }
    }
    return result
}