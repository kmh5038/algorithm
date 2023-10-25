import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var emptyArr: [Int] = []
    for i in 0..<num_list.count {
        if i > n-1 {
            emptyArr.append(num_list[i])
        }
     }
    for i in 0..<num_list.count {
        if i <= n-1 {
            emptyArr.append(num_list[i])
        }
    }
    return emptyArr
    }
    