import Foundation

func solution(_ strArr:[String]) -> Int {
     var groupSizes: [Int: Int] = [:]

    for str in strArr {
        let length = str.count
        groupSizes[length, default: 0] += 1
    }
    
    if let maxSize = groupSizes.values.max() {
        return maxSize
    } else {
        return 0
    }
}