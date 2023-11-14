import Foundation

func solution(_ common:[Int]) -> Int {
    var result = common
    
    if (common[1] - common[0]) == (common[2] - common[1]) {
        if let lastNum = common.last {
            result.append(lastNum + (common[1] - common[0]))
        }
    } else {
        if let lastNum = common.last {
            result.append(lastNum * (common[1] / common[0]))
            
        }
    }
    return result[result.count-1]
}