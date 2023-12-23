import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var stk:[Int] = []
    var i = 0
    
    while i < arr.count {
        if stk.isEmpty || arr[i] > stk.last! {
            stk.append(arr[i])
            i += 1
        } else {
            stk.removeLast()
        }
    }
    
    return stk
}