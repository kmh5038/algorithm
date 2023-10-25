import Foundation


func solution(_ str_list:[String]) -> [String] {
    var emptyArr:[String] = []
    
    for i in 0..<str_list.count {
        if str_list[i] == "l" {
            emptyArr += str_list[...(i-1)]
            break
        } else if str_list[i] == "r" {
            emptyArr += str_list[(i+1)...]
            break
        }
    }
    return emptyArr
}