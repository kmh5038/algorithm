import Foundation

func solution(_ num_list:[Int]) -> Int {
    var num = 0
    for i in 0..<num_list.count {
        if num_list.count >= 11 {
            num += num_list[i]
        } else {
            if num == 0 {
                num += num_list[i]
            } else {
                num *= num_list[i]
            }
        }
    }
    return num
}