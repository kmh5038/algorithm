import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var result: [Int] = []
    
    for i in 0..<arr.count {
        if flag[i] {
            for _ in 0..<(arr[i] * 2) {
                result.append(arr[i])
            }
        } else {
            if result.count >= arr[i] {
                result.removeLast(arr[i])
            }
        }
    }
    
    return result
}