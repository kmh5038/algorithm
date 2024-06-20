import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sortD:[Int] = d.sorted()
    var totalNum = 0
    var result = 0
    
    for i in sortD {
        totalNum += i
        if totalNum <= budget {
            result += 1
        }
    }
    
    return result
}