import Foundation

func solution(_ numLog: [Int]) -> String {
    var result = ""
    
    for i in 0..<(numLog.count - 1) {
      var num = numLog[i+1] - numLog[i]
        
        switch num {
            case 1
            : result += "w"
            case -1
            : result += "s"
            case 10
            : result += "d"
            case -10
            : result += "a"
            default
            : break
        }
    }
    return result
}
